#!/bin/sh
executor(){
	docker-compose --file docker-compose-sites.yml $*
	docker-compose --file docker-compose-proxy.yml $* 
}

case $1 in
	"up")
		executor "up --build -d"
		;;
	"down")
		executor "down"
		;;
esac

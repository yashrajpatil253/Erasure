#!/bin/bash

for pid in `ps -aef | grep -E 'python3|usbmuxd|Erasure' | awk '{print $2}'` ; do
sudo kill -9 $pid
done

cd /opt/.xcaliber/erasure_midas/erasure_packages/
./Erasure &> /opt/.xcaliber/logs/erasure-flask.log &

#cd /opt/.xcaliber/midas-hub-device-agent/
#python3 -u main.py &> /opt/.xcaliber/logs/hub.log &




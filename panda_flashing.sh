#!/usr/bin/bash

echo ================================================================
echo Panda Flashing...
echo i. For openpilot the device must be powered by 12v
echo i. Doing this a few times may unstick a panda... flashing properly
echo i. by BARGHE!
echo ================================================================

cd /data/openpilot/panda; pkill -f boardd; PYTHONPATH=..; python -c "from panda import Panda; Panda().flash()"; reboot
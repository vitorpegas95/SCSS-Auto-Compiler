@echo off
title SCSS Compiler by Vitor Pegas 2015

echo Would you like to compile a compressed version? Y/N

:compile
SET /P type=

echo Compiling style.scss to style.css with %type% 
IF %type%==Y goto comp
IF %type%==y goto comp

sass style.scss:style.css
pause
goto exit

:comp
echo Compressing...
sass --style=compressed style.scss:style.css
pause
goto exit

:exit
EXIT

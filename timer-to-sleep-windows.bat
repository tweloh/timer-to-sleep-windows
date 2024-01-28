@echo off
set /p type=shutdown or sleep:(defult:sleep)
set /p mins=Enter minutes to wait: 
set /a mins=%mins%*60
timeout /t %mins% /nobreak

if "%type%" == "shutdown" (
    shutdown /h
) else (
    rundll32.exe powrprof.dll,SetSuspendState Sleep
)

goto :eof

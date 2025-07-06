@echo off
setlocal

REM ===== Configuration =====
set "MVND_VERSION=2.0.0-rc-3"
set "MVND_PATH=%~dp0.mvnd\maven-mvnd-%MVND_VERSION%-windows-amd64\bin\mvnd.exe"

REM ===== Validate the mvnd binary exists =====
if not exist "%MVND_PATH%" (
    echo  mvnd.exe not found at:
    echo    %MVND_PATH%
    echo  Please ensure mvnd is extracted correctly.
    exit /b 1
)

REM ===== Run mvnd with all passed arguments =====
"%MVND_PATH%" %*

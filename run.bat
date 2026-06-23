@echo off
title wock-multi v2 cracked
color 0C
cd /d "%~dp0"
python navi/main.py
pause

@echo off
mode con: cols=180 lines=50
title WocksMultiV2 Cracked by frozekii - discord.gg/f82kBvX6CX
echo.

python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Python is not installed or not in PATH.
    echo [!] Please install Python 3.8+ from https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [*] Python detected. Installing dependencies...
echo.

pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo [!] Failed to install dependencies. Try running as Administrator.
    pause
    exit /b 1
)

echo [*] Dependencies installed successfully.
echo.

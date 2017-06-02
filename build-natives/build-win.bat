premake5 --file=build-win.lua vs2017
msbuild steamworks4j.sln /p:Configuration=ReleaseDLL /p:Platform=Win32 /t:Rebuild
copy bin\x32\ReleaseDLL\steamworks4j.dll ..\java-wrapper\src\main\resources\steamworks4j.dll
copy bin\x32\ReleaseDLL\steamworks4j-server.dll ..\server\src\main\resources\steamworks4j-server.dll
copy bin\x32\ReleaseDLL\steamworks4j-encryptedappticket.dll ..\server\src\main\resources\steamworks4j-encryptedappticket.dll
msbuild steamworks4j.sln /p:Configuration=ReleaseDLL /p:Platform=x64 /t:Rebuild
copy bin\x64\ReleaseDLL\steamworks4j.dll ..\java-wrapper\src\main\resources\steamworks4j64.dll
copy bin\x64\ReleaseDLL\steamworks4j-server.dll ..\server\src\main\resources\steamworks4j-server64.dll
copy bin\x64\ReleaseDLL\steamworks4j-encryptedappticket.dll ..\server\src\main\resources\steamworks4j-encryptedappticket64.dll


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 scalar_t__ WSACleanup ;
 int WSAGetLastError () ;
 scalar_t__ WSAStartup (int ,int *) ;
 int atexit (void (*) ()) ;
 int die (char*,int ) ;

__attribute__((used)) static void ensure_socket_initialization(void)
{
 WSADATA wsa;
 static int initialized = 0;

 if (initialized)
  return;

 if (WSAStartup(MAKEWORD(2,2), &wsa))
  die("unable to initialize winsock subsystem, error %d",
   WSAGetLastError());

 atexit((void(*)(void)) WSACleanup);
 initialized = 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SOCKET ;


 scalar_t__ INVALID_SOCKET ;
 int O_BINARY ;
 int O_RDWR ;
 int WSAGetLastError () ;
 scalar_t__ WSASocket (int,int,int,int *,int ,int ) ;
 int _open_osfhandle (scalar_t__,int) ;
 int closesocket (scalar_t__) ;
 int ensure_socket_initialization () ;
 int errno ;
 int error (char*,int ) ;
 int strerror (int ) ;

int mingw_socket(int domain, int type, int protocol)
{
 int sockfd;
 SOCKET s;

 ensure_socket_initialization();
 s = WSASocket(domain, type, protocol, ((void*)0), 0, 0);
 if (s == INVALID_SOCKET) {
  errno = WSAGetLastError();
  return -1;
 }

 if ((sockfd = _open_osfhandle(s, O_RDWR|O_BINARY)) < 0) {
  closesocket(s);
  return error("unable to make a socket file descriptor: %s",
   strerror(errno));
 }
 return sockfd;
}

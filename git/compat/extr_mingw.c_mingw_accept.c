
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int SOCKET ;


 int O_BINARY ;
 int O_RDWR ;
 int _get_osfhandle (int) ;
 int _open_osfhandle (int ,int) ;
 int accept (int ,struct sockaddr*,int *) ;
 int closesocket (int ) ;
 int errno ;
 int error (char*,int ) ;
 int strerror (int) ;

int mingw_accept(int sockfd1, struct sockaddr *sa, socklen_t *sz)
{
 int sockfd2;

 SOCKET s1 = (SOCKET)_get_osfhandle(sockfd1);
 SOCKET s2 = accept(s1, sa, sz);


 if ((sockfd2 = _open_osfhandle(s2, O_RDWR|O_BINARY)) < 0) {
  int err = errno;
  closesocket(s2);
  return error("unable to make a socket file descriptor: %s",
   strerror(err));
 }
 return sockfd2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int SOCKET ;


 int _get_osfhandle (int) ;
 int connect (int ,struct sockaddr*,size_t) ;

int mingw_connect(int sockfd, struct sockaddr *sa, size_t sz)
{
 SOCKET s = (SOCKET)_get_osfhandle(sockfd);
 return connect(s, sa, sz);
}

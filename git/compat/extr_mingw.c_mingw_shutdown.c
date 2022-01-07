
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int _get_osfhandle (int) ;
 int shutdown (int ,int) ;

int mingw_shutdown(int sockfd, int how)
{
 SOCKET s = (SOCKET)_get_osfhandle(sockfd);
 return shutdown(s, how);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int _get_osfhandle (int) ;
 int setsockopt (int ,int,int,char const*,int) ;

int mingw_setsockopt(int sockfd, int lvl, int optname, void *optval, int optlen)
{
 SOCKET s = (SOCKET)_get_osfhandle(sockfd);
 return setsockopt(s, lvl, optname, (const char*)optval, optlen);
}

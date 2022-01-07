
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct in6_nbrinfo {struct in6_addr addr; int ifname; } ;
typedef int nbi ;
typedef int caddr_t ;


 int AF_INET6 ;
 int SIOCGNBRINFO_IN6 ;
 int SOCK_DGRAM ;
 int bzero (struct in6_nbrinfo*,int) ;
 int close (int) ;
 int err (int,char*) ;
 int if_indextoname (int,int ) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int socket (int ,int ,int ) ;
 int warn (char*) ;

__attribute__((used)) static struct in6_nbrinfo *
getnbrinfo(struct in6_addr *addr, int ifindex, int warning)
{
 static struct in6_nbrinfo nbi;
 int sock;

 if ((sock = socket(AF_INET6, SOCK_DGRAM, 0)) < 0)
  err(1, "socket");

 bzero(&nbi, sizeof(nbi));
 if_indextoname(ifindex, nbi.ifname);
 nbi.addr = *addr;
 if (ioctl(sock, SIOCGNBRINFO_IN6, (caddr_t)&nbi) < 0) {
  if (warning)
   warn("ioctl(SIOCGNBRINFO_IN6)");
  close(sock);
  return(((void*)0));
 }

 close(sock);
 return(&nbi);
}

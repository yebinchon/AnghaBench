
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct in_addr {int s_addr; } ;
struct ifnet {int dummy; } ;


 scalar_t__ INADDR_ANY ;
 int arprequest (struct ifnet*,struct in_addr*,struct in_addr*,int *) ;
 scalar_t__ ntohl (int ) ;

void
arp_announce_ifaddr(struct ifnet *ifp, struct in_addr addr, u_char *enaddr)
{

 if (ntohl(addr.s_addr) != INADDR_ANY)
  arprequest(ifp, &addr, &addr, enaddr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_mtu; int ** if_afdata; } ;


 size_t AF_INET6 ;
 int IN6_LINKMTU (struct ifnet*) ;

int
in6_domifmtu(struct ifnet *ifp)
{
 if (ifp->if_afdata[AF_INET6] == ((void*)0))
  return ifp->if_mtu;

 return (IN6_LINKMTU(ifp));
}

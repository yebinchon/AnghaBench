
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int ** if_afdata; } ;


 size_t AF_INET6 ;
 int ND_IFINFO (struct ifnet*) ;
 int nd6_setmtu0 (struct ifnet*,int ) ;

void
nd6_setmtu(struct ifnet *ifp)
{
 if (ifp->if_afdata[AF_INET6] == ((void*)0))
  return;

 nd6_setmtu0(ifp, ND_IFINFO(ifp));
}

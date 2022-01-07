
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int bpfdetach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;

void
firewire_ifdetach(struct ifnet *ifp)
{
 bpfdetach(ifp);
 if_detach(ifp);
}

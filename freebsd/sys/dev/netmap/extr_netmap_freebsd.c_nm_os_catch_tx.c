
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_adapter {int if_transmit; } ;
struct TYPE_2__ {struct netmap_adapter up; } ;
struct netmap_generic_adapter {TYPE_1__ up; } ;
struct ifnet {int if_transmit; } ;


 struct ifnet* netmap_generic_getifp (struct netmap_generic_adapter*) ;
 int netmap_transmit ;
 int nm_os_ifnet_lock () ;
 int nm_os_ifnet_unlock () ;

int
nm_os_catch_tx(struct netmap_generic_adapter *gna, int intercept)
{
 struct netmap_adapter *na = &gna->up.up;
 struct ifnet *ifp = netmap_generic_getifp(gna);

 nm_os_ifnet_lock();
 if (intercept) {
  na->if_transmit = ifp->if_transmit;
  ifp->if_transmit = netmap_transmit;
 } else {
  ifp->if_transmit = na->if_transmit;
 }
 nm_os_ifnet_unlock();

 return 0;
}

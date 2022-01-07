
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_adapter {int name; struct ifnet* ifp; } ;
struct TYPE_2__ {struct netmap_adapter up; } ;
struct netmap_generic_adapter {int * save_if_input; TYPE_1__ up; } ;
struct ifnet {int * if_input; } ;


 int EBUSY ;
 int EINVAL ;
 int * freebsd_generic_rx_handler ;
 int nm_os_ifnet_lock () ;
 int nm_os_ifnet_unlock () ;
 int nm_prerr (char*,int ) ;

int
nm_os_catch_rx(struct netmap_generic_adapter *gna, int intercept)
{
 struct netmap_adapter *na = &gna->up.up;
 struct ifnet *ifp = na->ifp;
 int ret = 0;

 nm_os_ifnet_lock();
 if (intercept) {
  if (gna->save_if_input) {
   nm_prerr("RX on %s already intercepted", na->name);
   ret = EBUSY;
   goto out;
  }
  gna->save_if_input = ifp->if_input;
  ifp->if_input = freebsd_generic_rx_handler;
 } else {
  if (!gna->save_if_input) {
   nm_prerr("Failed to undo RX intercept on %s",
    na->name);
   ret = EINVAL;
   goto out;
  }
  ifp->if_input = gna->save_if_input;
  gna->save_if_input = ((void*)0);
 }
out:
 nm_os_ifnet_unlock();

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_eth_adapter {TYPE_1__* netdev; } ;
typedef TYPE_1__* if_t ;
struct TYPE_2__ {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int al_eth_down (struct al_eth_adapter*) ;
 int al_eth_up (struct al_eth_adapter*) ;

__attribute__((used)) static void
al_init_locked(void *arg)
{
 struct al_eth_adapter *adapter = arg;
 if_t ifp = adapter->netdev;
 int rc = 0;

 al_eth_down(adapter);
 rc = al_eth_up(adapter);

 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 if (rc == 0)
  ifp->if_drv_flags |= IFF_DRV_RUNNING;
}

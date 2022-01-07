
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_rx_queue {int irqs; int msix; struct adapter* adapter; } ;
struct ifnet {int if_drv_flags; } ;
struct adapter {int ctx; } ;


 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int IFF_DRV_RUNNING ;
 struct ifnet* iflib_get_ifp (int ) ;
 int ixgbe_disable_queue (struct adapter*,int ) ;

__attribute__((used)) static int
ixgbe_msix_que(void *arg)
{
 struct ix_rx_queue *que = arg;
 struct adapter *adapter = que->adapter;
 struct ifnet *ifp = iflib_get_ifp(que->adapter->ctx);


 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return (FILTER_HANDLED);

 ixgbe_disable_queue(adapter, que->msix);
 ++que->irqs;

 return (FILTER_SCHEDULE_THREAD);
}

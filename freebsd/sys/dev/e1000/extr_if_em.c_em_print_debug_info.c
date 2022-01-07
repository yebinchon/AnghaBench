
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx_ring {int dummy; } ;
struct rx_ring {int dummy; } ;
struct ifnet {int dummy; } ;
struct adapter {int tx_num_queues; int rx_num_queues; int hw; TYPE_2__* rx_queues; TYPE_1__* tx_queues; int ctx; } ;
typedef int device_t ;
struct TYPE_4__ {struct rx_ring rxr; } ;
struct TYPE_3__ {struct tx_ring txr; } ;


 int E1000_RDH (int) ;
 int E1000_RDT (int) ;
 int E1000_READ_REG (int *,int ) ;
 int E1000_TDH (int) ;
 int E1000_TDT (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int device_printf (int ,char*,int,...) ;
 int if_getdrvflags (struct ifnet*) ;
 int iflib_get_dev (int ) ;
 struct ifnet* iflib_get_ifp (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
em_print_debug_info(struct adapter *adapter)
{
 device_t dev = iflib_get_dev(adapter->ctx);
 struct ifnet *ifp = iflib_get_ifp(adapter->ctx);
 struct tx_ring *txr = &adapter->tx_queues->txr;
 struct rx_ring *rxr = &adapter->rx_queues->rxr;

 if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
  printf("Interface is RUNNING ");
 else
  printf("Interface is NOT RUNNING\n");

 if (if_getdrvflags(ifp) & IFF_DRV_OACTIVE)
  printf("and INACTIVE\n");
 else
  printf("and ACTIVE\n");

 for (int i = 0; i < adapter->tx_num_queues; i++, txr++) {
  device_printf(dev, "TX Queue %d ------\n", i);
  device_printf(dev, "hw tdh = %d, hw tdt = %d\n",
   E1000_READ_REG(&adapter->hw, E1000_TDH(i)),
   E1000_READ_REG(&adapter->hw, E1000_TDT(i)));

 }
 for (int j=0; j < adapter->rx_num_queues; j++, rxr++) {
  device_printf(dev, "RX Queue %d ------\n", j);
  device_printf(dev, "hw rdh = %d, hw rdt = %d\n",
   E1000_READ_REG(&adapter->hw, E1000_RDH(j)),
   E1000_READ_REG(&adapter->hw, E1000_RDT(j)));
 }
}

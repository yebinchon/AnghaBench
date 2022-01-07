
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_rx_queue {int msix; } ;
struct adapter {scalar_t__ num_rx_queues; scalar_t__ num_tx_queues; int vector; int hw; struct ix_rx_queue* rx_queues; } ;


 int IXGBE_EITR_DEFAULT ;
 int IXGBE_VTEITR (int ) ;
 int IXGBE_WRITE_REG (int *,int ,int ) ;
 int MPASS (int) ;
 int ixv_set_ivar (struct adapter*,int,int ,int) ;

__attribute__((used)) static void
ixv_configure_ivars(struct adapter *adapter)
{
 struct ix_rx_queue *que = adapter->rx_queues;

 MPASS(adapter->num_rx_queues == adapter->num_tx_queues);

 for (int i = 0; i < adapter->num_rx_queues; i++, que++) {

  ixv_set_ivar(adapter, i, que->msix, 0);

  ixv_set_ivar(adapter, i, que->msix, 1);

  IXGBE_WRITE_REG(&adapter->hw, IXGBE_VTEITR(que->msix),
      IXGBE_EITR_DEFAULT);
 }


 ixv_set_ivar(adapter, 1, adapter->vector, -1);
}

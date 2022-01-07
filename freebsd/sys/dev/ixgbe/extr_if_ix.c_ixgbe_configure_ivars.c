
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_ring {int me; } ;
struct rx_ring {int me; } ;
struct ix_tx_queue {int msix; struct tx_ring txr; } ;
struct ix_rx_queue {int msix; struct rx_ring rxr; } ;
struct adapter {int num_rx_queues; int num_tx_queues; int vector; int hw; scalar_t__ dmac; struct ix_tx_queue* tx_queues; struct ix_rx_queue* rx_queues; } ;


 int IXGBE_EITR (int ) ;
 int IXGBE_WRITE_REG (int *,int ,int) ;
 int ixgbe_max_interrupt_rate ;
 int ixgbe_set_ivar (struct adapter*,int,int ,int) ;

__attribute__((used)) static void
ixgbe_configure_ivars(struct adapter *adapter)
{
 struct ix_rx_queue *rx_que = adapter->rx_queues;
 struct ix_tx_queue *tx_que = adapter->tx_queues;
 u32 newitr;

 if (ixgbe_max_interrupt_rate > 0)
  newitr = (4000000 / ixgbe_max_interrupt_rate) & 0x0FF8;
 else {




  adapter->dmac = 0;
  newitr = 0;
 }

 for (int i = 0; i < adapter->num_rx_queues; i++, rx_que++) {
  struct rx_ring *rxr = &rx_que->rxr;


  ixgbe_set_ivar(adapter, rxr->me, rx_que->msix, 0);


  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EITR(rx_que->msix), newitr);
 }
 for (int i = 0; i < adapter->num_tx_queues; i++, tx_que++) {
  struct tx_ring *txr = &tx_que->txr;


  ixgbe_set_ivar(adapter, txr->me, tx_que->msix, 1);
 }

 ixgbe_set_ivar(adapter, 1, adapter->vector, -1);
}

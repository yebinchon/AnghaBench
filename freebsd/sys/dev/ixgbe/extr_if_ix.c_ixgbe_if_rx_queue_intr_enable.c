
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ix_rx_queue {int msix; } ;
struct adapter {struct ix_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;


 struct adapter* iflib_get_softc (int ) ;
 int ixgbe_enable_queue (struct adapter*,int ) ;

__attribute__((used)) static int
ixgbe_if_rx_queue_intr_enable(if_ctx_t ctx, uint16_t rxqid)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ix_rx_queue *que = &adapter->rx_queues[rxqid];

 ixgbe_enable_queue(adapter, que->msix);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct em_rx_queue {int eims; } ;
struct adapter {int hw; struct em_rx_queue* rx_queues; } ;
typedef int if_ctx_t ;


 int E1000_IMS ;
 int E1000_WRITE_REG (int *,int ,int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
em_if_rx_queue_intr_enable(if_ctx_t ctx, uint16_t rxqid)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct em_rx_queue *rxq = &adapter->rx_queues[rxqid];

 E1000_WRITE_REG(&adapter->hw, E1000_IMS, rxq->eims);
 return (0);
}

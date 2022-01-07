
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct em_tx_queue {int eims; } ;
struct adapter {int hw; struct em_tx_queue* tx_queues; } ;
typedef int if_ctx_t ;


 int E1000_EIMS ;
 int E1000_WRITE_REG (int *,int ,int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
igb_if_tx_queue_intr_enable(if_ctx_t ctx, uint16_t txqid)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct em_tx_queue *txq = &adapter->tx_queues[txqid];

 E1000_WRITE_REG(&adapter->hw, E1000_EIMS, txq->eims);
 return (0);
}

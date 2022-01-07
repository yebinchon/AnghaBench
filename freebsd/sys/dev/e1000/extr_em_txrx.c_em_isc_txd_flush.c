
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct tx_ring {int me; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct adapter {int hw; struct em_tx_queue* tx_queues; } ;
typedef int qidx_t ;


 int E1000_TDT (int ) ;
 int E1000_WRITE_REG (int *,int ,int ) ;

__attribute__((used)) static void
em_isc_txd_flush(void *arg, uint16_t txqid, qidx_t pidx)
{
 struct adapter *adapter = arg;
 struct em_tx_queue *que = &adapter->tx_queues[txqid];
 struct tx_ring *txr = &que->txr;

 E1000_WRITE_REG(&adapter->hw, E1000_TDT(txr->me), pidx);
}

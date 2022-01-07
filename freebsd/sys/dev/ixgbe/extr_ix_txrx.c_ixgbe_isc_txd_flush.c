
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct tx_ring {int tail; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct adapter {int hw; struct ix_tx_queue* tx_queues; } ;
typedef int qidx_t ;


 int IXGBE_WRITE_REG (int *,int ,int ) ;

__attribute__((used)) static void
ixgbe_isc_txd_flush(void *arg, uint16_t txqid, qidx_t pidx)
{
 struct adapter *sc = arg;
 struct ix_tx_queue *que = &sc->tx_queues[txqid];
 struct tx_ring *txr = &que->txr;

 IXGBE_WRITE_REG(&sc->hw, txr->tail, pidx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int tx_reclaim_task; int r; } ;
struct sge_eq {int flags; size_t tx_chan; int equiq; } ;
struct adapter {int * tq; } ;


 int EQ_ETH ;
 int EQ_TYPEMASK ;
 int MPASS (int) ;
 int atomic_readandclear_int (int *) ;
 int mp_ring_check_drainage (int ,int ) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
handle_eth_egr_update(struct adapter *sc, struct sge_eq *eq)
{
 struct sge_txq *txq = (void *)eq;

 MPASS((eq->flags & EQ_TYPEMASK) == EQ_ETH);

 atomic_readandclear_int(&eq->equiq);
 mp_ring_check_drainage(txq->r, 0);
 taskqueue_enqueue(sc->tq[eq->tx_chan], &txq->tx_reclaim_task);
}

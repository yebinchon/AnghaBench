
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int cleaned; int in_use; } ;
struct sge_qset {int txq_stopped; int lock; struct sge_txq* txq; } ;


 int MA_OWNED ;
 int TXQ_ETH ;
 scalar_t__ TX_RECLAIM_DEFAULT ;
 scalar_t__ TX_RECLAIM_MAX ;
 scalar_t__ TX_RECLAIM_MIN ;
 int clrbit (int *,int ) ;
 scalar_t__ cxgb_tx_reclaim_threshold ;
 int desc_reclaimable (struct sge_txq*) ;
 scalar_t__ isset (int *,int ) ;
 int mtx_assert (int *,int ) ;
 int t3_free_tx_desc (struct sge_qset*,int,int) ;

__attribute__((used)) static __inline int
reclaim_completed_tx(struct sge_qset *qs, int reclaim_min, int queue)
{
 struct sge_txq *q = &qs->txq[queue];
 int reclaim = desc_reclaimable(q);

 if ((cxgb_tx_reclaim_threshold > TX_RECLAIM_MAX) ||
     (cxgb_tx_reclaim_threshold < TX_RECLAIM_MIN))
  cxgb_tx_reclaim_threshold = TX_RECLAIM_DEFAULT;

 if (reclaim < reclaim_min)
  return (0);

 mtx_assert(&qs->lock, MA_OWNED);
 if (reclaim > 0) {
  t3_free_tx_desc(qs, reclaim, queue);
  q->cleaned += reclaim;
  q->in_use -= reclaim;
 }
 if (isset(&qs->txq_stopped, TXQ_ETH))
                clrbit(&qs->txq_stopped, TXQ_ETH);

 return (reclaim);
}

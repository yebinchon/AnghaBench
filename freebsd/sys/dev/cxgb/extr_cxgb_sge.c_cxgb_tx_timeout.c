
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txq {int in_use; int size; } ;
struct sge_qset {int coalescing; int qs_flags; struct sge_txq* txq; } ;


 int QS_TIMEOUT ;
 size_t TXQ_ETH ;
 scalar_t__ TXQ_TRYLOCK (struct sge_qset*) ;
 int TXQ_UNLOCK (struct sge_qset*) ;
 int cxgb_start_locked (struct sge_qset*) ;

__attribute__((used)) static void
cxgb_tx_timeout(void *arg)
{
 struct sge_qset *qs = arg;
 struct sge_txq *txq = &qs->txq[TXQ_ETH];

 if (qs->coalescing == 0 && (txq->in_use >= (txq->size>>3)))
                qs->coalescing = 1;
 if (TXQ_TRYLOCK(qs)) {
  qs->qs_flags |= QS_TIMEOUT;
  cxgb_start_locked(qs);
  qs->qs_flags &= ~QS_TIMEOUT;
  TXQ_UNLOCK(qs);
 }
}

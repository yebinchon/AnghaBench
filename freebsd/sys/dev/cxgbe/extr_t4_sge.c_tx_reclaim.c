
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_eq {scalar_t__ cidx; scalar_t__ pidx; scalar_t__ equeqidx; } ;
struct sge_txq {struct sge_eq eq; } ;


 scalar_t__ TXQ_TRYLOCK (struct sge_txq*) ;
 int TXQ_UNLOCK (struct sge_txq*) ;
 int reclaim_tx_descs (struct sge_txq*,int) ;

__attribute__((used)) static void
tx_reclaim(void *arg, int n)
{
 struct sge_txq *txq = arg;
 struct sge_eq *eq = &txq->eq;

 do {
  if (TXQ_TRYLOCK(txq) == 0)
   break;
  n = reclaim_tx_descs(txq, 32);
  if (eq->cidx == eq->pidx)
   eq->equeqidx = eq->pidx;
  TXQ_UNLOCK(txq);
 } while (n > 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_txq {TYPE_1__* axq_holdingbf; } ;
struct ath_softc {int dummy; } ;
struct TYPE_2__ {int bf_flags; } ;


 int ATH_BUF_BUSY ;
 int ATH_TXBUF_LOCK (struct ath_softc*) ;
 int ATH_TXBUF_UNLOCK (struct ath_softc*) ;
 int ATH_TXBUF_UNLOCK_ASSERT (struct ath_softc*) ;
 int ATH_TXQ_LOCK_ASSERT (struct ath_txq*) ;
 int ath_returnbuf_tail (struct ath_softc*,TYPE_1__*) ;

void
ath_txq_freeholdingbuf(struct ath_softc *sc, struct ath_txq *txq)
{
 ATH_TXBUF_UNLOCK_ASSERT(sc);
 ATH_TXQ_LOCK_ASSERT(txq);

 if (txq->axq_holdingbf == ((void*)0))
  return;

 txq->axq_holdingbf->bf_flags &= ~ATH_BUF_BUSY;

 ATH_TXBUF_LOCK(sc);
 ath_returnbuf_tail(sc, txq->axq_holdingbf);
 ATH_TXBUF_UNLOCK(sc);

 txq->axq_holdingbf = ((void*)0);
}

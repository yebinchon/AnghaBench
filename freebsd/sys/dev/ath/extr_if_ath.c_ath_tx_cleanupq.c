
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_qnum; } ;
struct ath_softc {int sc_txqsetup; int sc_ah; } ;


 int ATH_TXQ_LOCK_DESTROY (struct ath_txq*) ;
 int ath_hal_releasetxqueue (int ,int) ;

__attribute__((used)) static void
ath_tx_cleanupq(struct ath_softc *sc, struct ath_txq *txq)
{

 ath_hal_releasetxqueue(sc->sc_ah, txq->axq_qnum);
 sc->sc_txqsetup &= ~(1<<txq->axq_qnum);
 ATH_TXQ_LOCK_DESTROY(txq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_q; } ;
struct ath_softc {scalar_t__ sc_isedma; struct ath_txq* sc_cabq; } ;


 int ATH_TXQ_LOCK_ASSERT (struct ath_txq*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int ath_beacon_cabq_start_edma (struct ath_softc*) ;
 int ath_beacon_cabq_start_legacy (struct ath_softc*) ;

void
ath_beacon_cabq_start(struct ath_softc *sc)
{
 struct ath_txq *cabq = sc->sc_cabq;

 ATH_TXQ_LOCK_ASSERT(cabq);

 if (TAILQ_EMPTY(&cabq->axq_q))
  return;

 if (sc->sc_isedma)
  ath_beacon_cabq_start_edma(sc);
 else
  ath_beacon_cabq_start_legacy(sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_qnum; int axq_flags; int axq_q; } ;
struct ath_softc {int sc_ah; struct ath_txq* sc_cabq; } ;
struct ath_buf {int bf_daddr; } ;


 int ATH_TXQ_LOCK_ASSERT (struct ath_txq*) ;
 int ATH_TXQ_PUTRUNNING ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct ath_buf* TAILQ_FIRST (int *) ;
 int ath_hal_puttxbuf (int ,int ,int ) ;
 int ath_hal_txstart (int ,int ) ;

__attribute__((used)) static void
ath_beacon_cabq_start_legacy(struct ath_softc *sc)
{
 struct ath_buf *bf;
 struct ath_txq *cabq = sc->sc_cabq;

 ATH_TXQ_LOCK_ASSERT(cabq);
 if (TAILQ_EMPTY(&cabq->axq_q))
  return;
 bf = TAILQ_FIRST(&cabq->axq_q);


 ath_hal_puttxbuf(sc->sc_ah, cabq->axq_qnum, bf->bf_daddr);
 cabq->axq_flags |= ATH_TXQ_PUTRUNNING;


 ath_hal_txstart(sc->sc_ah, cabq->axq_qnum);
}

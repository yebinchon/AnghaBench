
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_tidq; } ;
struct ath_tid {size_t ac; scalar_t__ sched; } ;
struct ath_softc {struct ath_txq** sc_ac2q; } ;


 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;
 int TAILQ_REMOVE (int *,struct ath_tid*,int ) ;
 int axq_qelem ;

__attribute__((used)) static void
ath_tx_tid_unsched(struct ath_softc *sc, struct ath_tid *tid)
{
 struct ath_txq *txq = sc->sc_ac2q[tid->ac];

 ATH_TX_LOCK_ASSERT(sc);

 if (tid->sched == 0)
  return;

 tid->sched = 0;
 TAILQ_REMOVE(&txq->axq_tidq, tid, axq_qelem);
}

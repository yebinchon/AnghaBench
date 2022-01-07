
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_txq {int axq_tidq; } ;
struct ath_tid {size_t ac; int sched; TYPE_1__* an; } ;
struct ath_softc {struct ath_txq** sc_ac2q; } ;
struct TYPE_2__ {scalar_t__ an_leak_count; } ;


 int ATH_TX_LOCK_ASSERT (struct ath_softc*) ;
 int TAILQ_INSERT_HEAD (int *,struct ath_tid*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct ath_tid*,int ) ;
 int ath_tx_tid_can_tx_or_sched (struct ath_softc*,struct ath_tid*) ;
 int axq_qelem ;

void
ath_tx_tid_sched(struct ath_softc *sc, struct ath_tid *tid)
{
 struct ath_txq *txq = sc->sc_ac2q[tid->ac];

 ATH_TX_LOCK_ASSERT(sc);






 if (! ath_tx_tid_can_tx_or_sched(sc, tid))
  return;

 if (tid->sched)
  return;

 tid->sched = 1;
 TAILQ_INSERT_TAIL(&txq->axq_tidq, tid, axq_qelem);
}

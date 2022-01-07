
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int axq_q; } ;
struct ath_txq {int axq_qnum; TYPE_1__ fifo; int axq_tidq; int axq_q; struct ath_softc* axq_softc; int * axq_link; scalar_t__ axq_intrcnt; scalar_t__ axq_aggr_depth; scalar_t__ axq_depth; scalar_t__ axq_ac; } ;
struct ath_softc {int dummy; } ;


 int ATH_TXQ_LOCK_INIT (struct ath_softc*,struct ath_txq*) ;
 int TAILQ_INIT (int *) ;

__attribute__((used)) static void
ath_txq_init(struct ath_softc *sc, struct ath_txq *txq, int qnum)
{
 txq->axq_qnum = qnum;
 txq->axq_ac = 0;
 txq->axq_depth = 0;
 txq->axq_aggr_depth = 0;
 txq->axq_intrcnt = 0;
 txq->axq_link = ((void*)0);
 txq->axq_softc = sc;
 TAILQ_INIT(&txq->axq_q);
 TAILQ_INIT(&txq->axq_tidq);
 TAILQ_INIT(&txq->fifo.axq_q);
 ATH_TXQ_LOCK_INIT(sc, txq);
}

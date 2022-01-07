
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {int axq_tidq; } ;
struct ath_tid {int an; } ;
struct ath_softc {int dummy; } ;
struct ath_buf {int dummy; } ;
typedef int ath_bufhead ;


 int ATH_TX_LOCK (struct ath_softc*) ;
 int ATH_TX_UNLOCK (struct ath_softc*) ;
 int TAILQ_EMPTY (int *) ;
 void* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_REMOVE (int *,struct ath_buf*,int ) ;
 int ath_tx_default_comp (struct ath_softc*,struct ath_buf*,int ) ;
 int ath_tx_tid_drain (struct ath_softc*,int ,struct ath_tid*,int *) ;
 int ath_tx_tid_unsched (struct ath_softc*,struct ath_tid*) ;
 int bf_list ;

void
ath_tx_txq_drain(struct ath_softc *sc, struct ath_txq *txq)
{
 struct ath_tid *tid;
 ath_bufhead bf_cq;
 struct ath_buf *bf;

 TAILQ_INIT(&bf_cq);
 ATH_TX_LOCK(sc);





 while (! TAILQ_EMPTY(&txq->axq_tidq)) {
  tid = TAILQ_FIRST(&txq->axq_tidq);
  ath_tx_tid_drain(sc, tid->an, tid, &bf_cq);
  ath_tx_tid_unsched(sc, tid);
 }

 ATH_TX_UNLOCK(sc);

 while ((bf = TAILQ_FIRST(&bf_cq)) != ((void*)0)) {
  TAILQ_REMOVE(&bf_cq, bf, bf_list);
  ath_tx_default_comp(sc, bf, 0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {size_t evq_index; scalar_t__ init_state; unsigned int added; unsigned int completed; scalar_t__ blocked; int entries; struct sfxge_softc* sc; } ;
struct sfxge_softc {struct sfxge_evq** evq; } ;
struct sfxge_evq {int dummy; } ;


 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 int SFXGE_TXQ_LOCK (struct sfxge_txq*) ;
 scalar_t__ SFXGE_TXQ_STARTED ;
 unsigned int SFXGE_TXQ_UNBLOCK_LEVEL (int ) ;
 scalar_t__ __predict_false (int) ;
 int sfxge_tx_qdpl_service (struct sfxge_txq*) ;
 int sfxge_tx_qreap (struct sfxge_txq*) ;

__attribute__((used)) static void
sfxge_tx_qunblock(struct sfxge_txq *txq)
{
 struct sfxge_softc *sc;
 struct sfxge_evq *evq;

 sc = txq->sc;
 evq = sc->evq[txq->evq_index];

 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 if (__predict_false(txq->init_state != SFXGE_TXQ_STARTED))
  return;

 SFXGE_TXQ_LOCK(txq);

 if (txq->blocked) {
  unsigned int level;

  level = txq->added - txq->completed;
  if (level <= SFXGE_TXQ_UNBLOCK_LEVEL(txq->entries)) {

   sfxge_tx_qreap(txq);
   txq->blocked = 0;
  }
 }

 sfxge_tx_qdpl_service(txq);

}

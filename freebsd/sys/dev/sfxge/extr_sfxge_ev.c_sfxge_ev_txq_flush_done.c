
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int uint16_t ;
struct sfxge_txq {scalar_t__ init_state; size_t evq_index; } ;
struct sfxge_softc {struct sfxge_evq** evq; struct sfxge_txq** txq; } ;
struct sfxge_evq {size_t index; scalar_t__ init_state; int common; struct sfxge_softc* sc; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int KASSERT (int,char*) ;
 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 int SFXGE_SW_EV_TX_QFLUSH_DONE ;
 scalar_t__ SFXGE_TXQ_INITIALIZED ;
 int efx_ev_qpost (int ,int ) ;
 int sfxge_sw_ev_txq_magic (int ,struct sfxge_txq*) ;
 int sfxge_tx_qflush_done (struct sfxge_txq*) ;

__attribute__((used)) static boolean_t
sfxge_ev_txq_flush_done(void *arg, uint32_t txq_index)
{
 struct sfxge_evq *evq;
 struct sfxge_softc *sc;
 struct sfxge_txq *txq;
 uint16_t magic;

 evq = (struct sfxge_evq *)arg;
 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 sc = evq->sc;
 txq = sc->txq[txq_index];

 KASSERT(txq != ((void*)0), ("txq == NULL"));
 KASSERT(txq->init_state == SFXGE_TXQ_INITIALIZED,
     ("txq not initialized"));

 if (txq->evq_index == evq->index) {
  sfxge_tx_qflush_done(txq);
  return (B_FALSE);
 }


 evq = sc->evq[txq->evq_index];
 magic = sfxge_sw_ev_txq_magic(SFXGE_SW_EV_TX_QFLUSH_DONE, txq);

 KASSERT(evq->init_state == SFXGE_EVQ_STARTED,
     ("evq not started"));
 efx_ev_qpost(evq->common, magic);

 return (B_FALSE);
}

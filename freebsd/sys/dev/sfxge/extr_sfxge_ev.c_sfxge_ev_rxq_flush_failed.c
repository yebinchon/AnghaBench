
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int uint16_t ;
struct sfxge_softc {struct sfxge_evq** evq; struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {unsigned int index; } ;
struct sfxge_evq {scalar_t__ init_state; int common; struct sfxge_softc* sc; } ;
typedef int boolean_t ;


 int B_FALSE ;
 int KASSERT (int,char*) ;
 int SFXGE_EVQ_LOCK_ASSERT_OWNED (struct sfxge_evq*) ;
 scalar_t__ SFXGE_EVQ_STARTED ;
 int SFXGE_SW_EV_RX_QFLUSH_FAILED ;
 int efx_ev_qpost (int ,int ) ;
 int sfxge_sw_ev_rxq_magic (int ,struct sfxge_rxq*) ;

__attribute__((used)) static boolean_t
sfxge_ev_rxq_flush_failed(void *arg, uint32_t rxq_index)
{
 struct sfxge_evq *evq;
 struct sfxge_softc *sc;
 struct sfxge_rxq *rxq;
 unsigned int index;
 uint16_t magic;

 evq = (struct sfxge_evq *)arg;
 SFXGE_EVQ_LOCK_ASSERT_OWNED(evq);

 sc = evq->sc;
 rxq = sc->rxq[rxq_index];

 KASSERT(rxq != ((void*)0), ("rxq == NULL"));


 index = rxq->index;
 evq = sc->evq[index];
 magic = sfxge_sw_ev_rxq_magic(SFXGE_SW_EV_RX_QFLUSH_FAILED, rxq);

 KASSERT(evq->init_state == SFXGE_EVQ_STARTED,
     ("evq not started"));
 efx_ev_qpost(evq->common, magic);

 return (B_FALSE);
}

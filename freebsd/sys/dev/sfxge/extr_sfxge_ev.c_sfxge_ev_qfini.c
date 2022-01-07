
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {struct sfxge_evq** evq; } ;
struct sfxge_evq {scalar_t__ init_state; int mem; int txq; int * txqs; } ;


 int KASSERT (int,char*) ;
 int M_SFXGE ;
 scalar_t__ SFXGE_EVQ_INITIALIZED ;
 int SFXGE_EVQ_LOCK_DESTROY (struct sfxge_evq*) ;
 int free (struct sfxge_evq*,int ) ;
 int sfxge_dma_free (int *) ;

__attribute__((used)) static void
sfxge_ev_qfini(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_evq *evq;

 evq = sc->evq[index];

 KASSERT(evq->init_state == SFXGE_EVQ_INITIALIZED,
     ("evq->init_state != SFXGE_EVQ_INITIALIZED"));
 KASSERT(evq->txqs == &evq->txq, ("evq->txqs != &evq->txq"));

 sfxge_dma_free(&evq->mem);

 sc->evq[index] = ((void*)0);

 SFXGE_EVQ_LOCK_DESTROY(evq);

 free(evq, M_SFXGE);
}

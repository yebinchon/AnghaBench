
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_softc {struct sfxge_rxq** rxq; } ;
struct sfxge_rxq {scalar_t__ init_state; int mem; struct sfxge_rxq* queue; } ;


 int KASSERT (int,char*) ;
 int M_SFXGE ;
 scalar_t__ SFXGE_RXQ_INITIALIZED ;
 int free (struct sfxge_rxq*,int ) ;
 int sfxge_dma_free (int *) ;
 int sfxge_lro_fini (struct sfxge_rxq*) ;

__attribute__((used)) static void
sfxge_rx_qfini(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_rxq *rxq;

 rxq = sc->rxq[index];

 KASSERT(rxq->init_state == SFXGE_RXQ_INITIALIZED,
     ("rxq->init_state != SFXGE_RXQ_INITIALIZED"));


 free(rxq->queue, M_SFXGE);
 sfxge_lro_fini(rxq);


 sfxge_dma_free(&rxq->mem);

 sc->rxq[index] = ((void*)0);

 free(rxq, M_SFXGE);
}

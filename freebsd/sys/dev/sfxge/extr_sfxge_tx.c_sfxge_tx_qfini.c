
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {scalar_t__ init_state; scalar_t__ type; int mem; struct sfxge_txq* stmp; int map; int packet_dma_tag; struct sfxge_txq* pend_desc; } ;
struct sfxge_softc {unsigned int txq_entries; struct sfxge_txq** txq; } ;


 int KASSERT (int,char*) ;
 int M_SFXGE ;
 scalar_t__ SFXGE_TXQ_INITIALIZED ;
 scalar_t__ SFXGE_TXQ_IP_TCP_UDP_CKSUM ;
 int SFXGE_TXQ_LOCK_DESTROY (struct sfxge_txq*) ;
 int bus_dmamap_destroy (int ,int ) ;
 int free (struct sfxge_txq*,int ) ;
 int sfxge_dma_free (int *) ;
 int tso_fini (struct sfxge_txq*) ;

__attribute__((used)) static void
sfxge_tx_qfini(struct sfxge_softc *sc, unsigned int index)
{
 struct sfxge_txq *txq;
 unsigned int nmaps;

 txq = sc->txq[index];

 KASSERT(txq->init_state == SFXGE_TXQ_INITIALIZED,
     ("txq->init_state != SFXGE_TXQ_INITIALIZED"));

 if (txq->type == SFXGE_TXQ_IP_TCP_UDP_CKSUM)
  tso_fini(txq);


 free(txq->pend_desc, M_SFXGE);
 nmaps = sc->txq_entries;
 while (nmaps-- != 0)
  bus_dmamap_destroy(txq->packet_dma_tag, txq->stmp[nmaps].map);
 free(txq->stmp, M_SFXGE);


 sfxge_dma_free(&txq->mem);

 sc->txq[index] = ((void*)0);

 SFXGE_TXQ_LOCK_DESTROY(txq);

 free(txq, M_SFXGE);
}

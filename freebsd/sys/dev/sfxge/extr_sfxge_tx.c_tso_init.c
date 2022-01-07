
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {int * tsoh_buffer; struct sfxge_softc* sc; } ;
struct sfxge_softc {int txq_entries; } ;


 int M_SFXGE ;
 int M_WAITOK ;
 int PAGE_SIZE ;
 unsigned int TSOH_PAGE_COUNT (int ) ;
 int free (int *,int ) ;
 int * malloc (unsigned int,int ,int ) ;
 int sfxge_dma_alloc (struct sfxge_softc*,int ,int *) ;
 int sfxge_dma_free (int *) ;

__attribute__((used)) static int tso_init(struct sfxge_txq *txq)
{
 struct sfxge_softc *sc = txq->sc;
 unsigned int tsoh_page_count = TSOH_PAGE_COUNT(sc->txq_entries);
 int i, rc;


 txq->tsoh_buffer = malloc(tsoh_page_count * sizeof(txq->tsoh_buffer[0]),
      M_SFXGE, M_WAITOK);

 for (i = 0; i < tsoh_page_count; i++) {
  rc = sfxge_dma_alloc(sc, PAGE_SIZE, &txq->tsoh_buffer[i]);
  if (rc != 0)
   goto fail;
 }

 return (0);

fail:
 while (i-- > 0)
  sfxge_dma_free(&txq->tsoh_buffer[i]);
 free(txq->tsoh_buffer, M_SFXGE);
 txq->tsoh_buffer = ((void*)0);
 return (rc);
}

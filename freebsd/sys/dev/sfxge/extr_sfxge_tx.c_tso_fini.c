
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfxge_txq {int * tsoh_buffer; TYPE_1__* sc; } ;
struct TYPE_2__ {int txq_entries; } ;


 int M_SFXGE ;
 int TSOH_PAGE_COUNT (int ) ;
 int free (int *,int ) ;
 int sfxge_dma_free (int *) ;

__attribute__((used)) static void tso_fini(struct sfxge_txq *txq)
{
 int i;

 if (txq->tsoh_buffer != ((void*)0)) {
  for (i = 0; i < TSOH_PAGE_COUNT(txq->sc->txq_entries); i++)
   sfxge_dma_free(&txq->tsoh_buffer[i]);
  free(txq->tsoh_buffer, M_SFXGE);
 }
}

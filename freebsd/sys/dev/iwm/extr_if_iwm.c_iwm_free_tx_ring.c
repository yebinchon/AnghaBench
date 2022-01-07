
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_tx_ring {int * data_dmat; struct iwm_tx_data* data; int cmd_dma; int desc_dma; } ;
struct iwm_tx_data {int * map; int * m; } ;
struct iwm_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int IWM_TX_RING_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int iwm_dma_contig_free (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
iwm_free_tx_ring(struct iwm_softc *sc, struct iwm_tx_ring *ring)
{
 int i;

 iwm_dma_contig_free(&ring->desc_dma);
 iwm_dma_contig_free(&ring->cmd_dma);

 for (i = 0; i < IWM_TX_RING_COUNT; i++) {
  struct iwm_tx_data *data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dmat, data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->data_dmat, data->map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->map != ((void*)0)) {
   bus_dmamap_destroy(ring->data_dmat, data->map);
   data->map = ((void*)0);
  }
 }
 if (ring->data_dmat != ((void*)0)) {
  bus_dma_tag_destroy(ring->data_dmat);
  ring->data_dmat = ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwm_softc {TYPE_1__* cfg; } ;
struct iwm_rx_ring {int * data_dmat; int * spare_map; struct iwm_rx_data* data; int used_desc_dma; int stat_dma; int free_desc_dma; } ;
struct iwm_rx_data {int * map; int * m; } ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;


 int BUS_DMASYNC_POSTREAD ;
 int IWM_RX_LEGACY_RING_COUNT ;
 int IWM_RX_MQ_RING_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int iwm_dma_contig_free (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
iwm_free_rx_ring(struct iwm_softc *sc, struct iwm_rx_ring *ring)
{
 int count, i;

 iwm_dma_contig_free(&ring->free_desc_dma);
 iwm_dma_contig_free(&ring->stat_dma);
 iwm_dma_contig_free(&ring->used_desc_dma);

 count = sc->cfg->mqrx_supported ? IWM_RX_MQ_RING_COUNT :
     IWM_RX_LEGACY_RING_COUNT;

 for (i = 0; i < count; i++) {
  struct iwm_rx_data *data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dmat, data->map,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(ring->data_dmat, data->map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->map != ((void*)0)) {
   bus_dmamap_destroy(ring->data_dmat, data->map);
   data->map = ((void*)0);
  }
 }
 if (ring->spare_map != ((void*)0)) {
  bus_dmamap_destroy(ring->data_dmat, ring->spare_map);
  ring->spare_map = ((void*)0);
 }
 if (ring->data_dmat != ((void*)0)) {
  bus_dma_tag_destroy(ring->data_dmat);
  ring->data_dmat = ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc_tx_ring {int lock; int * data_dma_tag; struct rt_softc_tx_data* data; int * seg0_dma_tag; int * seg0_dma_map; int * seg0; int * desc_dma_tag; int * desc_dma_map; int * desc; } ;
struct rt_softc_tx_data {int * dma_map; int * m; } ;
struct rt_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int RT_SOFTC_TX_RING_DATA_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int m_freem (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void
rt_free_tx_ring(struct rt_softc *sc, struct rt_softc_tx_ring *ring)
{
 struct rt_softc_tx_data *data;
 int i;

 if (ring->desc != ((void*)0)) {
  bus_dmamap_sync(ring->desc_dma_tag, ring->desc_dma_map,
   BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->desc_dma_tag, ring->desc_dma_map);
  bus_dmamem_free(ring->desc_dma_tag, ring->desc,
   ring->desc_dma_map);
 }

 if (ring->desc_dma_tag != ((void*)0))
  bus_dma_tag_destroy(ring->desc_dma_tag);

 if (ring->seg0 != ((void*)0)) {
  bus_dmamap_sync(ring->seg0_dma_tag, ring->seg0_dma_map,
   BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->seg0_dma_tag, ring->seg0_dma_map);
  bus_dmamem_free(ring->seg0_dma_tag, ring->seg0,
   ring->seg0_dma_map);
 }

 if (ring->seg0_dma_tag != ((void*)0))
  bus_dma_tag_destroy(ring->seg0_dma_tag);

 for (i = 0; i < RT_SOFTC_TX_RING_DATA_COUNT; i++) {
  data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dma_tag, data->dma_map,
    BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->data_dma_tag, data->dma_map);
   m_freem(data->m);
  }

  if (data->dma_map != ((void*)0))
   bus_dmamap_destroy(ring->data_dma_tag, data->dma_map);
 }

 if (ring->data_dma_tag != ((void*)0))
  bus_dma_tag_destroy(ring->data_dma_tag);

 mtx_destroy(&ring->lock);
}

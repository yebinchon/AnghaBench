
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc_rx_ring {int * data_dma_tag; int * spare_dma_map; struct rt_softc_rx_data* data; int * desc_dma_tag; int * desc_dma_map; int * desc; } ;
struct rt_softc_rx_data {int * dma_map; int * m; } ;
struct rt_softc {int dummy; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int RT_SOFTC_RX_RING_DATA_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rt_free_rx_ring(struct rt_softc *sc, struct rt_softc_rx_ring *ring)
{
 struct rt_softc_rx_data *data;
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

 for (i = 0; i < RT_SOFTC_RX_RING_DATA_COUNT; i++) {
  data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dma_tag, data->dma_map,
    BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(ring->data_dma_tag, data->dma_map);
   m_freem(data->m);
  }

  if (data->dma_map != ((void*)0))
   bus_dmamap_destroy(ring->data_dma_tag, data->dma_map);
 }

 if (ring->spare_dma_map != ((void*)0))
  bus_dmamap_destroy(ring->data_dma_tag, ring->spare_dma_map);

 if (ring->data_dma_tag != ((void*)0))
  bus_dma_tag_destroy(ring->data_dma_tag);
}

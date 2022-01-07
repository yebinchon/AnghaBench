
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int dummy; } ;
struct rt2860_rx_ring {int * data_dmat; struct rt2860_rx_data* data; int * desc_dmat; int * desc_map; int * rxd; } ;
struct rt2860_rx_data {int * map; int * m; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int RT2860_RX_RING_COUNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int m_freem (int *) ;

void
rt2860_free_rx_ring(struct rt2860_softc *sc, struct rt2860_rx_ring *ring)
{
 int i;

 if (ring->rxd != ((void*)0)) {
  bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->desc_dmat, ring->desc_map);
  bus_dmamem_free(ring->desc_dmat, ring->rxd, ring->desc_map);
 }
 if (ring->desc_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->desc_dmat);

 for (i = 0; i < RT2860_RX_RING_COUNT; i++) {
  struct rt2860_rx_data *data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dmat, data->map,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(ring->data_dmat, data->map);
   m_freem(data->m);
  }
  if (data->map != ((void*)0))
   bus_dmamap_destroy(ring->data_dmat, data->map);
 }
 if (ring->data_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->data_dmat);
}

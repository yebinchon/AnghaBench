
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_txdesc {scalar_t__ sdl1; scalar_t__ sdl0; } ;
struct rt_softc_tx_ring {scalar_t__ data_next; scalar_t__ data_cur; scalar_t__ data_queued; int data_dma_tag; struct rt_softc_tx_data* data; int seg0_dma_map; int seg0_dma_tag; int desc_dma_map; int desc_dma_tag; scalar_t__ desc_next; scalar_t__ desc_cur; scalar_t__ desc_queued; struct rt_txdesc* desc; } ;
struct rt_softc_tx_data {int * m; int dma_map; } ;
struct rt_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int RT_SOFTC_TX_RING_DATA_COUNT ;
 int RT_SOFTC_TX_RING_DESC_COUNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rt_reset_tx_ring(struct rt_softc *sc, struct rt_softc_tx_ring *ring)
{
 struct rt_softc_tx_data *data;
 struct rt_txdesc *desc;
 int i;

 for (i = 0; i < RT_SOFTC_TX_RING_DESC_COUNT; i++) {
  desc = &ring->desc[i];

  desc->sdl0 = 0;
  desc->sdl1 = 0;
 }

 ring->desc_queued = 0;
 ring->desc_cur = 0;
 ring->desc_next = 0;

 bus_dmamap_sync(ring->desc_dma_tag, ring->desc_dma_map,
  BUS_DMASYNC_PREWRITE);

 bus_dmamap_sync(ring->seg0_dma_tag, ring->seg0_dma_map,
  BUS_DMASYNC_PREWRITE);

 for (i = 0; i < RT_SOFTC_TX_RING_DATA_COUNT; i++) {
  data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dma_tag, data->dma_map,
    BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->data_dma_tag, data->dma_map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
 }

 ring->data_queued = 0;
 ring->data_cur = 0;
 ring->data_next = 0;
}

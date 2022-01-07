
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_tx_ring {int count; int * data_dmat; struct rt2661_tx_data* data; int * desc_dmat; int * desc_map; int * desc; } ;
struct rt2661_tx_data {int * map; int * ni; int * m; } ;
struct rt2661_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int M_DEVBUF ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_sync (int *,int *,int ) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int free (struct rt2661_tx_data*,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rt2661_free_tx_ring(struct rt2661_softc *sc, struct rt2661_tx_ring *ring)
{
 struct rt2661_tx_data *data;
 int i;

 if (ring->desc != ((void*)0)) {
  bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->desc_dmat, ring->desc_map);
  bus_dmamem_free(ring->desc_dmat, ring->desc, ring->desc_map);
 }

 if (ring->desc_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->desc_dmat);

 if (ring->data != ((void*)0)) {
  for (i = 0; i < ring->count; i++) {
   data = &ring->data[i];

   if (data->m != ((void*)0)) {
    bus_dmamap_sync(ring->data_dmat, data->map,
        BUS_DMASYNC_POSTWRITE);
    bus_dmamap_unload(ring->data_dmat, data->map);
    m_freem(data->m);
   }

   if (data->ni != ((void*)0))
    ieee80211_free_node(data->ni);

   if (data->map != ((void*)0))
    bus_dmamap_destroy(ring->data_dmat, data->map);
  }

  free(ring->data, M_DEVBUF);
 }

 if (ring->data_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->data_dmat);
}

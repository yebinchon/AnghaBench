
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_tx_ring {struct rt2860_tx_data** data; int * desc_dmat; int desc_map; int * txd; } ;
struct rt2860_tx_data {int * ni; int * m; int map; } ;
struct rt2860_softc {int data_pool; int * txwi_dmat; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int RT2860_TX_RING_COUNT ;
 int SLIST_INSERT_HEAD (int *,struct rt2860_tx_data*,int ) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_sync (int *,int ,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;
 int next ;

void
rt2860_free_tx_ring(struct rt2860_softc *sc, struct rt2860_tx_ring *ring)
{
 struct rt2860_tx_data *data;
 int i;

 if (ring->txd != ((void*)0)) {
  bus_dmamap_sync(ring->desc_dmat, ring->desc_map,
      BUS_DMASYNC_POSTWRITE);
  bus_dmamap_unload(ring->desc_dmat, ring->desc_map);
  bus_dmamem_free(ring->desc_dmat, ring->txd, ring->desc_map);
 }
 if (ring->desc_dmat != ((void*)0))
  bus_dma_tag_destroy(ring->desc_dmat);

 for (i = 0; i < RT2860_TX_RING_COUNT; i++) {
  if ((data = ring->data[i]) == ((void*)0))
   continue;

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(sc->txwi_dmat, data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->txwi_dmat, data->map);
   m_freem(data->m);
  }
  if (data->ni != ((void*)0))
   ieee80211_free_node(data->ni);

  SLIST_INSERT_HEAD(&sc->data_pool, data, next);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_tx_ring {scalar_t__ next; scalar_t__ cur; scalar_t__ queued; struct rt2860_tx_data** data; } ;
struct rt2860_tx_data {int * ni; int * m; int map; } ;
struct rt2860_softc {int data_pool; int txwi_dmat; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int RT2860_TX_RING_COUNT ;
 int SLIST_INSERT_HEAD (int *,struct rt2860_tx_data*,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;
 int next ;

void
rt2860_reset_tx_ring(struct rt2860_softc *sc, struct rt2860_tx_ring *ring)
{
 struct rt2860_tx_data *data;
 int i;

 for (i = 0; i < RT2860_TX_RING_COUNT; i++) {
  if ((data = ring->data[i]) == ((void*)0))
   continue;

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(sc->txwi_dmat, data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->txwi_dmat, data->map);
   m_freem(data->m);
   data->m = ((void*)0);
  }
  if (data->ni != ((void*)0)) {
   ieee80211_free_node(data->ni);
   data->ni = ((void*)0);
  }

  SLIST_INSERT_HEAD(&sc->data_pool, data, next);
  ring->data[i] = ((void*)0);
 }

 ring->queued = 0;
 ring->cur = ring->next = 0;
}

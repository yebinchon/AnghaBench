
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_tx_ring {int count; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; int data_dmat; struct iwi_tx_data* data; } ;
struct iwi_tx_data {int * ni; int * m; int map; } ;
struct iwi_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
iwi_reset_tx_ring(struct iwi_softc *sc, struct iwi_tx_ring *ring)
{
 struct iwi_tx_data *data;
 int i;

 for (i = 0; i < ring->count; i++) {
  data = &ring->data[i];

  if (data->m != ((void*)0)) {
   bus_dmamap_sync(ring->data_dmat, data->map,
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(ring->data_dmat, data->map);
   m_freem(data->m);
   data->m = ((void*)0);
  }

  if (data->ni != ((void*)0)) {
   ieee80211_free_node(data->ni);
   data->ni = ((void*)0);
  }
 }

 ring->queued = 0;
 ring->cur = ring->next = 0;
}

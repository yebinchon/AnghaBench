
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2560_tx_ring {int count; scalar_t__ next_encrypt; scalar_t__ cur_encrypt; scalar_t__ next; scalar_t__ cur; scalar_t__ queued; int desc_map; int desc_dmat; int data_dmat; struct rt2560_tx_data* data; struct rt2560_tx_desc* desc; } ;
struct rt2560_tx_desc {scalar_t__ flags; } ;
struct rt2560_tx_data {int * ni; int * m; int map; } ;
struct rt2560_softc {int dummy; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_free_node (int *) ;
 int m_freem (int *) ;

__attribute__((used)) static void
rt2560_reset_tx_ring(struct rt2560_softc *sc, struct rt2560_tx_ring *ring)
{
 struct rt2560_tx_desc *desc;
 struct rt2560_tx_data *data;
 int i;

 for (i = 0; i < ring->count; i++) {
  desc = &ring->desc[i];
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

  desc->flags = 0;
 }

 bus_dmamap_sync(ring->desc_dmat, ring->desc_map, BUS_DMASYNC_PREWRITE);

 ring->queued = 0;
 ring->cur = ring->next = 0;
 ring->cur_encrypt = ring->next_encrypt = 0;
}

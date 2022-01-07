
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_tx_ring {int read; int cur; struct iwn_tx_data* data; } ;
struct iwn_tx_data {scalar_t__ remapped; int * m; } ;
struct iwn_softc {int dummy; } ;


 int IWN_TX_RING_COUNT ;

__attribute__((used)) static void
iwn_adj_ampdu_ptr(struct iwn_softc *sc, struct iwn_tx_ring *ring)
{
 int i;

 for (i = ring->read; i != ring->cur; i = (i + 1) % IWN_TX_RING_COUNT) {
  struct iwn_tx_data *data = &ring->data[i];

  if (data->m != ((void*)0))
   break;

  data->remapped = 0;
 }

 ring->read = i;
}

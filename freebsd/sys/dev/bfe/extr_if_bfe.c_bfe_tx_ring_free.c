
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfe_softc {int bfe_tx_map; int bfe_tx_tag; int bfe_tx_list; TYPE_1__* bfe_tx_ring; int bfe_txmbuf_tag; } ;
struct TYPE_2__ {int * bfe_mbuf; int bfe_map; } ;


 int BFE_TX_LIST_CNT ;
 int BFE_TX_LIST_SIZE ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bfe_tx_ring_free(struct bfe_softc *sc)
{
 int i;

 for(i = 0; i < BFE_TX_LIST_CNT; i++) {
  if (sc->bfe_tx_ring[i].bfe_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->bfe_txmbuf_tag,
       sc->bfe_tx_ring[i].bfe_map, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->bfe_txmbuf_tag,
       sc->bfe_tx_ring[i].bfe_map);
   m_freem(sc->bfe_tx_ring[i].bfe_mbuf);
   sc->bfe_tx_ring[i].bfe_mbuf = ((void*)0);
  }
 }
 bzero(sc->bfe_tx_list, BFE_TX_LIST_SIZE);
 bus_dmamap_sync(sc->bfe_tx_tag, sc->bfe_tx_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}

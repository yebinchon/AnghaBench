
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfe_softc {int bfe_rx_map; int bfe_rx_tag; int bfe_rx_list; TYPE_1__* bfe_rx_ring; int bfe_rxmbuf_tag; } ;
struct TYPE_2__ {int * bfe_mbuf; int bfe_map; } ;


 int BFE_RX_LIST_CNT ;
 int BFE_RX_LIST_SIZE ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bfe_rx_ring_free(struct bfe_softc *sc)
{
 int i;

 for (i = 0; i < BFE_RX_LIST_CNT; i++) {
  if (sc->bfe_rx_ring[i].bfe_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->bfe_rxmbuf_tag,
       sc->bfe_rx_ring[i].bfe_map, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->bfe_rxmbuf_tag,
       sc->bfe_rx_ring[i].bfe_map);
   m_freem(sc->bfe_rx_ring[i].bfe_mbuf);
   sc->bfe_rx_ring[i].bfe_mbuf = ((void*)0);
  }
 }
 bzero(sc->bfe_rx_list, BFE_RX_LIST_SIZE);
 bus_dmamap_sync(sc->bfe_rx_tag, sc->bfe_rx_map,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}

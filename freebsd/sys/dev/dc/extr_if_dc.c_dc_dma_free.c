
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dc_sbuf; int ** dc_tx_map; int ** dc_rx_map; } ;
struct TYPE_3__ {scalar_t__ dc_rx_list_paddr; scalar_t__ dc_tx_list_paddr; int * dc_tx_list; int * dc_rx_list; } ;
struct dc_softc {scalar_t__ dc_saddr; int * dc_stag; int dc_smap; TYPE_2__ dc_cdata; int * dc_tx_ltag; int dc_tx_lmap; TYPE_1__ dc_ldata; int * dc_rx_ltag; int dc_rx_lmap; int * dc_tx_mtag; int * dc_rx_mtag; int * dc_sparemap; } ;


 int DC_RX_LIST_CNT ;
 int DC_TX_LIST_CNT ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_destroy (int *,int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
dc_dma_free(struct dc_softc *sc)
{
 int i;


 if (sc->dc_rx_mtag != ((void*)0)) {
  for (i = 0; i < DC_RX_LIST_CNT; i++) {
   if (sc->dc_cdata.dc_rx_map[i] != ((void*)0))
    bus_dmamap_destroy(sc->dc_rx_mtag,
        sc->dc_cdata.dc_rx_map[i]);
  }
  if (sc->dc_sparemap != ((void*)0))
   bus_dmamap_destroy(sc->dc_rx_mtag, sc->dc_sparemap);
  bus_dma_tag_destroy(sc->dc_rx_mtag);
 }


 if (sc->dc_rx_mtag != ((void*)0)) {
  for (i = 0; i < DC_TX_LIST_CNT; i++) {
   if (sc->dc_cdata.dc_tx_map[i] != ((void*)0))
    bus_dmamap_destroy(sc->dc_tx_mtag,
        sc->dc_cdata.dc_tx_map[i]);
  }
  bus_dma_tag_destroy(sc->dc_tx_mtag);
 }


 if (sc->dc_rx_ltag) {
  if (sc->dc_ldata.dc_rx_list_paddr != 0)
   bus_dmamap_unload(sc->dc_rx_ltag, sc->dc_rx_lmap);
  if (sc->dc_ldata.dc_rx_list != ((void*)0))
   bus_dmamem_free(sc->dc_rx_ltag, sc->dc_ldata.dc_rx_list,
       sc->dc_rx_lmap);
  bus_dma_tag_destroy(sc->dc_rx_ltag);
 }


 if (sc->dc_tx_ltag) {
  if (sc->dc_ldata.dc_tx_list_paddr != 0)
   bus_dmamap_unload(sc->dc_tx_ltag, sc->dc_tx_lmap);
  if (sc->dc_ldata.dc_tx_list != ((void*)0))
   bus_dmamem_free(sc->dc_tx_ltag, sc->dc_ldata.dc_tx_list,
       sc->dc_tx_lmap);
  bus_dma_tag_destroy(sc->dc_tx_ltag);
 }


 if (sc->dc_stag) {
  if (sc->dc_saddr != 0)
   bus_dmamap_unload(sc->dc_stag, sc->dc_smap);
  if (sc->dc_cdata.dc_sbuf != ((void*)0))
   bus_dmamem_free(sc->dc_stag, sc->dc_cdata.dc_sbuf,
       sc->dc_smap);
  bus_dma_tag_destroy(sc->dc_stag);
 }
}

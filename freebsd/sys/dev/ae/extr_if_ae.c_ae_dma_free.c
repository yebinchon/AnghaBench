
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dma_txd_busaddr; scalar_t__ dma_txs_busaddr; scalar_t__ dma_rxd_busaddr; int * dma_parent_tag; int * rxd_base_dma; int * dma_rxd_tag; int dma_rxd_map; int * txs_base; int * dma_txs_tag; int dma_txs_map; int * txd_base; int * dma_txd_tag; int dma_txd_map; } ;
typedef TYPE_1__ ae_softc_t ;


 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_free (int *,int *,int ) ;

__attribute__((used)) static void
ae_dma_free(ae_softc_t *sc)
{

 if (sc->dma_txd_tag != ((void*)0)) {
  if (sc->dma_txd_busaddr != 0)
   bus_dmamap_unload(sc->dma_txd_tag, sc->dma_txd_map);
  if (sc->txd_base != ((void*)0))
   bus_dmamem_free(sc->dma_txd_tag, sc->txd_base,
       sc->dma_txd_map);
  bus_dma_tag_destroy(sc->dma_txd_tag);
  sc->dma_txd_tag = ((void*)0);
  sc->txd_base = ((void*)0);
  sc->dma_txd_busaddr = 0;
 }
 if (sc->dma_txs_tag != ((void*)0)) {
  if (sc->dma_txs_busaddr != 0)
   bus_dmamap_unload(sc->dma_txs_tag, sc->dma_txs_map);
  if (sc->txs_base != ((void*)0))
   bus_dmamem_free(sc->dma_txs_tag, sc->txs_base,
       sc->dma_txs_map);
  bus_dma_tag_destroy(sc->dma_txs_tag);
  sc->dma_txs_tag = ((void*)0);
  sc->txs_base = ((void*)0);
  sc->dma_txs_busaddr = 0;
 }
 if (sc->dma_rxd_tag != ((void*)0)) {
  if (sc->dma_rxd_busaddr != 0)
   bus_dmamap_unload(sc->dma_rxd_tag, sc->dma_rxd_map);
  if (sc->rxd_base_dma != ((void*)0))
   bus_dmamem_free(sc->dma_rxd_tag, sc->rxd_base_dma,
       sc->dma_rxd_map);
  bus_dma_tag_destroy(sc->dma_rxd_tag);
  sc->dma_rxd_tag = ((void*)0);
  sc->rxd_base_dma = ((void*)0);
  sc->dma_rxd_busaddr = 0;
 }
 if (sc->dma_parent_tag != ((void*)0)) {
  bus_dma_tag_destroy(sc->dma_parent_tag);
  sc->dma_parent_tag = ((void*)0);
 }
}

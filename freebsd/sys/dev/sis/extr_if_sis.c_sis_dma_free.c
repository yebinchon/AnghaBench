
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_txdesc {scalar_t__ tx_dmamap; } ;
struct sis_softc {scalar_t__ sis_parent_tag; scalar_t__ sis_tx_list_tag; int sis_tx_list_map; scalar_t__ sis_tx_list; scalar_t__ sis_tx_paddr; scalar_t__ sis_rx_list_tag; int sis_rx_list_map; scalar_t__ sis_rx_list; scalar_t__ sis_rx_paddr; scalar_t__ sis_tx_tag; scalar_t__ sis_rx_tag; struct sis_txdesc* sis_txdesc; scalar_t__ sis_rx_sparemap; struct sis_rxdesc* sis_rxdesc; } ;
struct sis_rxdesc {scalar_t__ rx_dmamap; } ;


 int SIS_RX_LIST_CNT ;
 int SIS_TX_LIST_CNT ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
sis_dma_free(struct sis_softc *sc)
{
 struct sis_rxdesc *rxd;
 struct sis_txdesc *txd;
 int i;


 for (i = 0; i < SIS_RX_LIST_CNT; i++) {
  rxd = &sc->sis_rxdesc[i];
  if (rxd->rx_dmamap)
   bus_dmamap_destroy(sc->sis_rx_tag, rxd->rx_dmamap);
 }
 if (sc->sis_rx_sparemap)
  bus_dmamap_destroy(sc->sis_rx_tag, sc->sis_rx_sparemap);


 for (i = 0; i < SIS_TX_LIST_CNT; i++) {
  txd = &sc->sis_txdesc[i];
  if (txd->tx_dmamap)
   bus_dmamap_destroy(sc->sis_tx_tag, txd->tx_dmamap);
 }

 if (sc->sis_rx_tag)
  bus_dma_tag_destroy(sc->sis_rx_tag);
 if (sc->sis_tx_tag)
  bus_dma_tag_destroy(sc->sis_tx_tag);


 if (sc->sis_rx_paddr)
  bus_dmamap_unload(sc->sis_rx_list_tag, sc->sis_rx_list_map);
 if (sc->sis_rx_list)
  bus_dmamem_free(sc->sis_rx_list_tag, sc->sis_rx_list,
      sc->sis_rx_list_map);

 if (sc->sis_rx_list_tag)
  bus_dma_tag_destroy(sc->sis_rx_list_tag);


 if (sc->sis_tx_paddr)
  bus_dmamap_unload(sc->sis_tx_list_tag, sc->sis_tx_list_map);

 if (sc->sis_tx_list)
  bus_dmamem_free(sc->sis_tx_list_tag, sc->sis_tx_list,
      sc->sis_tx_list_map);

 if (sc->sis_tx_list_tag)
  bus_dma_tag_destroy(sc->sis_tx_list_tag);


 if (sc->sis_parent_tag)
  bus_dma_tag_destroy(sc->sis_parent_tag);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mge_softc {int mge_desc_dtag; int mge_rx_dtag; int mge_tx_dtag; int mge_tx_desc; int mge_rx_desc; } ;


 int MGE_RX_DESC_NUM ;
 int MGE_TX_DESC_NUM ;
 int bus_dma_tag_destroy (int ) ;
 int mge_free_desc (struct mge_softc*,int ,int ,int ,int) ;

__attribute__((used)) static void
mge_free_dma(struct mge_softc *sc)
{


 mge_free_desc(sc, sc->mge_rx_desc, MGE_RX_DESC_NUM, sc->mge_rx_dtag, 1);
 mge_free_desc(sc, sc->mge_tx_desc, MGE_TX_DESC_NUM, sc->mge_tx_dtag, 0);


 bus_dma_tag_destroy(sc->mge_tx_dtag);
 bus_dma_tag_destroy(sc->mge_rx_dtag);

 bus_dma_tag_destroy(sc->mge_desc_dtag);
}

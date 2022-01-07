
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mge_softc {struct mge_desc_wrapper* mge_rx_desc; int rx_desc_start; struct mge_desc_wrapper* mge_tx_desc; int tx_desc_start; int mge_rx_dtag; int mge_tx_dtag; int mge_desc_dtag; int dev; } ;
struct mge_desc_wrapper {int mge_desc_paddr; TYPE_1__* mge_desc; int buffer; int buffer_dmap; } ;
struct mge_desc {int dummy; } ;
struct TYPE_2__ {int buffer; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MGE_RX_DESC_NUM ;
 int MGE_TX_DESC_NUM ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int mge_alloc_desc_dma (struct mge_softc*,struct mge_desc_wrapper*,int,int *) ;
 int mge_new_rxbuf (int ,int ,int *,int *) ;

__attribute__((used)) static int
mge_allocate_dma(struct mge_softc *sc)
{
 int error;
 struct mge_desc_wrapper *dw;
 int i;


 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
     16, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sizeof(struct mge_desc), 1,
     sizeof(struct mge_desc), 0,
     ((void*)0), ((void*)0),
     &sc->mge_desc_dtag);


 mge_alloc_desc_dma(sc, sc->mge_tx_desc, MGE_TX_DESC_NUM,
     &sc->mge_tx_dtag);
 mge_alloc_desc_dma(sc, sc->mge_rx_desc, MGE_RX_DESC_NUM,
     &sc->mge_rx_dtag);

 for (i = 0; i < MGE_RX_DESC_NUM; i++) {
  dw = &(sc->mge_rx_desc[i]);
  mge_new_rxbuf(sc->mge_rx_dtag, dw->buffer_dmap, &dw->buffer,
      &dw->mge_desc->buffer);
 }

 sc->tx_desc_start = sc->mge_tx_desc[0].mge_desc_paddr;
 sc->rx_desc_start = sc->mge_rx_desc[0].mge_desc_paddr;

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mge_softc {int rx_desc_start; scalar_t__ rx_desc_curr; struct mge_desc_wrapper* mge_rx_desc; int mge_rx_dtag; } ;
struct mge_desc_wrapper {int mge_desc_paddr; TYPE_1__* mge_desc; int buffer; int buffer_dmap; } ;
struct TYPE_2__ {int buffer; } ;


 int MGE_ENABLE_RXQ (int ) ;
 int MGE_RECEIVE_LOCK_ASSERT (struct mge_softc*) ;
 int MGE_RX_CUR_DESC_PTR (int ) ;
 int MGE_RX_DEFAULT_QUEUE ;
 int MGE_RX_DESC_NUM ;
 int MGE_RX_QUEUE_CMD ;
 int MGE_WRITE (struct mge_softc*,int ,int ) ;
 int mge_alloc_desc_dma (struct mge_softc*,struct mge_desc_wrapper*,int,int *) ;
 int mge_free_desc (struct mge_softc*,struct mge_desc_wrapper*,int,int ,int) ;
 int mge_new_rxbuf (int ,int ,int *,int *) ;

__attribute__((used)) static void
mge_reinit_rx(struct mge_softc *sc)
{
 struct mge_desc_wrapper *dw;
 int i;

 MGE_RECEIVE_LOCK_ASSERT(sc);

 mge_free_desc(sc, sc->mge_rx_desc, MGE_RX_DESC_NUM, sc->mge_rx_dtag, 1);

 mge_alloc_desc_dma(sc, sc->mge_rx_desc, MGE_RX_DESC_NUM,
     &sc->mge_rx_dtag);

 for (i = 0; i < MGE_RX_DESC_NUM; i++) {
  dw = &(sc->mge_rx_desc[i]);
  mge_new_rxbuf(sc->mge_rx_dtag, dw->buffer_dmap, &dw->buffer,
  &dw->mge_desc->buffer);
 }

 sc->rx_desc_start = sc->mge_rx_desc[0].mge_desc_paddr;
 sc->rx_desc_curr = 0;

 MGE_WRITE(sc, MGE_RX_CUR_DESC_PTR(MGE_RX_DEFAULT_QUEUE),
     sc->rx_desc_start);


 MGE_WRITE(sc, MGE_RX_QUEUE_CMD, MGE_ENABLE_RXQ(MGE_RX_DEFAULT_QUEUE));
}

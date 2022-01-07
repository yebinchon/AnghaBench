
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_txdesc {int * tx_dmamap; int * tx_m; } ;
struct msk_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct TYPE_3__ {int msk_rx_tag; struct msk_rxdesc* msk_rxdesc; int * msk_rx_sparemap; int msk_tx_tag; struct msk_txdesc* msk_txdesc; int msk_rx_ring_map; int msk_rx_ring_tag; int msk_tx_ring_map; int msk_tx_ring_tag; int msk_parent_tag; } ;
struct TYPE_4__ {scalar_t__ msk_rx_ring_paddr; int msk_rx_ring; scalar_t__ msk_tx_ring_paddr; int msk_tx_ring; } ;
struct msk_if_softc {int msk_flags; int msk_if_dev; TYPE_1__ msk_cdata; TYPE_2__ msk_rdata; } ;
struct msk_dmamap_arg {scalar_t__ msk_busaddr; } ;
typedef int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int MSK_FLAG_RAMBUF ;
 int MSK_MAXTXSEGS ;
 int MSK_RING_ALIGN ;
 int MSK_RX_BUF_ALIGN ;
 int MSK_RX_RING_CNT ;
 int MSK_RX_RING_SZ ;
 int MSK_TSO_MAXSGSIZE ;
 int MSK_TSO_MAXSIZE ;
 int MSK_TX_RING_CNT ;
 int MSK_TX_RING_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct msk_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int msk_dmamap_cb ;

__attribute__((used)) static int
msk_txrx_dma_alloc(struct msk_if_softc *sc_if)
{
 struct msk_dmamap_arg ctx;
 struct msk_txdesc *txd;
 struct msk_rxdesc *rxd;
 bus_size_t rxalign;
 int error, i;


 error = bus_dma_tag_create(
      bus_get_dma_tag(sc_if->msk_if_dev),
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_parent_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc_if->msk_cdata.msk_parent_tag,
      MSK_RING_ALIGN, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MSK_TX_RING_SZ,
      1,
      MSK_TX_RING_SZ,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_tx_ring_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc_if->msk_cdata.msk_parent_tag,
      MSK_RING_ALIGN, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MSK_RX_RING_SZ,
      1,
      MSK_RX_RING_SZ,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_rx_ring_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create Rx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc_if->msk_cdata.msk_parent_tag,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MSK_TSO_MAXSIZE,
      MSK_MAXTXSEGS,
      MSK_TSO_MAXSGSIZE,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_tx_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create Tx DMA tag\n");
  goto fail;
 }

 rxalign = 1;




 if ((sc_if->msk_flags & MSK_FLAG_RAMBUF) != 0)
  rxalign = MSK_RX_BUF_ALIGN;

 error = bus_dma_tag_create(sc_if->msk_cdata.msk_parent_tag,
      rxalign, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MCLBYTES,
      1,
      MCLBYTES,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_rx_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create Rx DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc_if->msk_cdata.msk_tx_ring_tag,
     (void **)&sc_if->msk_rdata.msk_tx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc_if->msk_cdata.msk_tx_ring_map);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.msk_busaddr = 0;
 error = bus_dmamap_load(sc_if->msk_cdata.msk_tx_ring_tag,
     sc_if->msk_cdata.msk_tx_ring_map, sc_if->msk_rdata.msk_tx_ring,
     MSK_TX_RING_SZ, msk_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc_if->msk_rdata.msk_tx_ring_paddr = ctx.msk_busaddr;


 error = bus_dmamem_alloc(sc_if->msk_cdata.msk_rx_ring_tag,
     (void **)&sc_if->msk_rdata.msk_rx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc_if->msk_cdata.msk_rx_ring_map);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.msk_busaddr = 0;
 error = bus_dmamap_load(sc_if->msk_cdata.msk_rx_ring_tag,
     sc_if->msk_cdata.msk_rx_ring_map, sc_if->msk_rdata.msk_rx_ring,
     MSK_RX_RING_SZ, msk_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc_if->msk_rdata.msk_rx_ring_paddr = ctx.msk_busaddr;


 for (i = 0; i < MSK_TX_RING_CNT; i++) {
  txd = &sc_if->msk_cdata.msk_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc_if->msk_cdata.msk_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc_if->msk_if_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc_if->msk_cdata.msk_rx_tag, 0,
     &sc_if->msk_cdata.msk_rx_sparemap)) != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < MSK_RX_RING_CNT; i++) {
  rxd = &sc_if->msk_cdata.msk_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc_if->msk_cdata.msk_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc_if->msk_if_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}

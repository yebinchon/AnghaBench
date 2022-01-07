
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arge_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int arge_rx_tag; struct arge_rxdesc* arge_rxdesc; int * arge_rx_sparemap; int arge_tx_tag; struct arge_txdesc* arge_txdesc; int arge_rx_ring_map; int arge_rx_ring_tag; int arge_tx_ring_map; int arge_tx_ring_tag; int arge_parent_tag; } ;
struct TYPE_3__ {scalar_t__ arge_tx_ring_paddr; scalar_t__ arge_rx_ring_paddr; int arge_rx_ring; int arge_tx_ring; } ;
struct arge_softc {int arge_hw_flags; int arge_dev; TYPE_2__ arge_cdata; TYPE_1__ arge_rdata; } ;
struct arge_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct arge_dmamap_arg {scalar_t__ arge_busaddr; } ;


 int ARGE_HW_FLG_RX_DESC_ALIGN_1BYTE ;
 int ARGE_HW_FLG_TX_DESC_ALIGN_1BYTE ;
 int ARGE_MAXFRAGS ;
 int ARGE_RING_ALIGN ;
 int ARGE_RX_DMA_SIZE ;
 int ARGE_RX_RING_COUNT ;
 int ARGE_TX_DMA_SIZE ;
 int ARGE_TX_RING_COUNT ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int arge_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct arge_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
arge_dma_alloc(struct arge_softc *sc)
{
 struct arge_dmamap_arg ctx;
 struct arge_txdesc *txd;
 struct arge_rxdesc *rxd;
 int error, i;
 int arge_tx_align, arge_rx_align;


 arge_tx_align = 4;
 arge_rx_align = 4;

 if (sc->arge_hw_flags & ARGE_HW_FLG_TX_DESC_ALIGN_1BYTE)
  arge_tx_align = 1;
 if (sc->arge_hw_flags & ARGE_HW_FLG_RX_DESC_ALIGN_1BYTE)
  arge_rx_align = 1;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->arge_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->arge_cdata.arge_parent_tag);
 if (error != 0) {
  device_printf(sc->arge_dev,
      "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(
     sc->arge_cdata.arge_parent_tag,
     ARGE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ARGE_TX_DMA_SIZE,
     1,
     ARGE_TX_DMA_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->arge_cdata.arge_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->arge_dev,
      "failed to create Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->arge_cdata.arge_parent_tag,
     ARGE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ARGE_RX_DMA_SIZE,
     1,
     ARGE_RX_DMA_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->arge_cdata.arge_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->arge_dev,
      "failed to create Rx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->arge_cdata.arge_parent_tag,
     arge_tx_align, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * ARGE_MAXFRAGS,
     ARGE_MAXFRAGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->arge_cdata.arge_tx_tag);
 if (error != 0) {
  device_printf(sc->arge_dev, "failed to create Tx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->arge_cdata.arge_parent_tag,
     arge_rx_align, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     ARGE_MAXFRAGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->arge_cdata.arge_rx_tag);
 if (error != 0) {
  device_printf(sc->arge_dev, "failed to create Rx DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->arge_cdata.arge_tx_ring_tag,
     (void **)&sc->arge_rdata.arge_tx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO,
     &sc->arge_cdata.arge_tx_ring_map);
 if (error != 0) {
  device_printf(sc->arge_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.arge_busaddr = 0;
 error = bus_dmamap_load(sc->arge_cdata.arge_tx_ring_tag,
     sc->arge_cdata.arge_tx_ring_map, sc->arge_rdata.arge_tx_ring,
     ARGE_TX_DMA_SIZE, arge_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.arge_busaddr == 0) {
  device_printf(sc->arge_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc->arge_rdata.arge_tx_ring_paddr = ctx.arge_busaddr;


 error = bus_dmamem_alloc(sc->arge_cdata.arge_rx_ring_tag,
     (void **)&sc->arge_rdata.arge_rx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO,
     &sc->arge_cdata.arge_rx_ring_map);
 if (error != 0) {
  device_printf(sc->arge_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.arge_busaddr = 0;
 error = bus_dmamap_load(sc->arge_cdata.arge_rx_ring_tag,
     sc->arge_cdata.arge_rx_ring_map, sc->arge_rdata.arge_rx_ring,
     ARGE_RX_DMA_SIZE, arge_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.arge_busaddr == 0) {
  device_printf(sc->arge_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc->arge_rdata.arge_rx_ring_paddr = ctx.arge_busaddr;


 for (i = 0; i < ARGE_TX_RING_COUNT; i++) {
  txd = &sc->arge_cdata.arge_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->arge_cdata.arge_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->arge_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->arge_cdata.arge_rx_tag, 0,
     &sc->arge_cdata.arge_rx_sparemap)) != 0) {
  device_printf(sc->arge_dev,
      "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < ARGE_RX_RING_COUNT; i++) {
  rxd = &sc->arge_cdata.arge_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->arge_cdata.arge_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->arge_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}

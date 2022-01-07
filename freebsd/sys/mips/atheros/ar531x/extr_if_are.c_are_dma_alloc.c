
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct are_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_3__ {int are_rx_tag; struct are_rxdesc* are_rxdesc; int * are_rx_sparemap; int are_tx_tag; struct are_txdesc* are_txdesc; int are_rx_ring_map; int are_rx_ring_tag; int are_tx_ring_map; int are_tx_ring_tag; int are_parent_tag; } ;
struct TYPE_4__ {scalar_t__ are_tx_ring_paddr; scalar_t__ are_rx_ring_paddr; int are_rx_ring; int are_tx_ring; } ;
struct are_softc {int are_dev; TYPE_1__ are_cdata; TYPE_2__ are_rdata; } ;
struct are_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct are_dmamap_arg {scalar_t__ are_busaddr; } ;


 int ARE_MAXFRAGS ;
 int ARE_RING_ALIGN ;
 int ARE_RX_ALIGN ;
 int ARE_RX_RING_CNT ;
 int ARE_RX_RING_SIZE ;
 int ARE_TX_RING_CNT ;
 int ARE_TX_RING_SIZE ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int are_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct are_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
are_dma_alloc(struct are_softc *sc)
{
 struct are_dmamap_arg ctx;
 struct are_txdesc *txd;
 struct are_rxdesc *rxd;
 int error, i;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->are_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->are_cdata.are_parent_tag);
 if (error != 0) {
  device_printf(sc->are_dev, "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(
     sc->are_cdata.are_parent_tag,
     ARE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ARE_TX_RING_SIZE,
     1,
     ARE_TX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->are_cdata.are_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->are_dev, "failed to create Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->are_cdata.are_parent_tag,
     ARE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ARE_RX_RING_SIZE,
     1,
     ARE_RX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->are_cdata.are_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->are_dev, "failed to create Rx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->are_cdata.are_parent_tag,
     sizeof(uint32_t), 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * ARE_MAXFRAGS,
     ARE_MAXFRAGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->are_cdata.are_tx_tag);
 if (error != 0) {
  device_printf(sc->are_dev, "failed to create Tx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->are_cdata.are_parent_tag,
     ARE_RX_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->are_cdata.are_rx_tag);
 if (error != 0) {
  device_printf(sc->are_dev, "failed to create Rx DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->are_cdata.are_tx_ring_tag,
     (void **)&sc->are_rdata.are_tx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->are_cdata.are_tx_ring_map);
 if (error != 0) {
  device_printf(sc->are_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.are_busaddr = 0;
 error = bus_dmamap_load(sc->are_cdata.are_tx_ring_tag,
     sc->are_cdata.are_tx_ring_map, sc->are_rdata.are_tx_ring,
     ARE_TX_RING_SIZE, are_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.are_busaddr == 0) {
  device_printf(sc->are_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc->are_rdata.are_tx_ring_paddr = ctx.are_busaddr;


 error = bus_dmamem_alloc(sc->are_cdata.are_rx_ring_tag,
     (void **)&sc->are_rdata.are_rx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->are_cdata.are_rx_ring_map);
 if (error != 0) {
  device_printf(sc->are_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.are_busaddr = 0;
 error = bus_dmamap_load(sc->are_cdata.are_rx_ring_tag,
     sc->are_cdata.are_rx_ring_map, sc->are_rdata.are_rx_ring,
     ARE_RX_RING_SIZE, are_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.are_busaddr == 0) {
  device_printf(sc->are_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc->are_rdata.are_rx_ring_paddr = ctx.are_busaddr;


 for (i = 0; i < ARE_TX_RING_CNT; i++) {
  txd = &sc->are_cdata.are_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->are_cdata.are_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->are_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->are_cdata.are_rx_tag, 0,
     &sc->are_cdata.are_rx_sparemap)) != 0) {
  device_printf(sc->are_dev,
      "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < ARE_RX_RING_CNT; i++) {
  rxd = &sc->are_cdata.are_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->are_cdata.are_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->are_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}

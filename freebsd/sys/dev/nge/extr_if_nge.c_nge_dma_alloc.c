
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nge_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_3__ {int nge_rx_tag; struct nge_rxdesc* nge_rxdesc; int * nge_rx_sparemap; int nge_tx_tag; struct nge_txdesc* nge_txdesc; int nge_rx_ring_map; int nge_rx_ring_tag; int nge_tx_ring_map; int nge_tx_ring_tag; int nge_parent_tag; } ;
struct TYPE_4__ {scalar_t__ nge_tx_ring_paddr; scalar_t__ nge_rx_ring_paddr; int nge_rx_ring; int nge_tx_ring; } ;
struct nge_softc {int nge_dev; TYPE_1__ nge_cdata; TYPE_2__ nge_rdata; } ;
struct nge_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct nge_dmamap_arg {scalar_t__ nge_busaddr; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int NGE_MAXTXSEGS ;
 int NGE_RING_ALIGN ;
 int NGE_RX_ALIGN ;
 int NGE_RX_RING_CNT ;
 int NGE_RX_RING_SIZE ;
 int NGE_TX_RING_CNT ;
 int NGE_TX_RING_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct nge_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int nge_dmamap_cb ;

__attribute__((used)) static int
nge_dma_alloc(struct nge_softc *sc)
{
 struct nge_dmamap_arg ctx;
 struct nge_txdesc *txd;
 struct nge_rxdesc *rxd;
 int error, i;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->nge_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->nge_cdata.nge_parent_tag);
 if (error != 0) {
  device_printf(sc->nge_dev, "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc->nge_cdata.nge_parent_tag,
     NGE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     NGE_TX_RING_SIZE,
     1,
     NGE_TX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->nge_cdata.nge_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->nge_dev, "failed to create Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->nge_cdata.nge_parent_tag,
     NGE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     NGE_RX_RING_SIZE,
     1,
     NGE_RX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->nge_cdata.nge_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->nge_dev,
      "failed to create Rx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->nge_cdata.nge_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * NGE_MAXTXSEGS,
     NGE_MAXTXSEGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->nge_cdata.nge_tx_tag);
 if (error != 0) {
  device_printf(sc->nge_dev, "failed to create Tx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->nge_cdata.nge_parent_tag,
     NGE_RX_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->nge_cdata.nge_rx_tag);
 if (error != 0) {
  device_printf(sc->nge_dev, "failed to create Rx DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->nge_cdata.nge_tx_ring_tag,
     (void **)&sc->nge_rdata.nge_tx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->nge_cdata.nge_tx_ring_map);
 if (error != 0) {
  device_printf(sc->nge_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.nge_busaddr = 0;
 error = bus_dmamap_load(sc->nge_cdata.nge_tx_ring_tag,
     sc->nge_cdata.nge_tx_ring_map, sc->nge_rdata.nge_tx_ring,
     NGE_TX_RING_SIZE, nge_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.nge_busaddr == 0) {
  device_printf(sc->nge_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc->nge_rdata.nge_tx_ring_paddr = ctx.nge_busaddr;


 error = bus_dmamem_alloc(sc->nge_cdata.nge_rx_ring_tag,
     (void **)&sc->nge_rdata.nge_rx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->nge_cdata.nge_rx_ring_map);
 if (error != 0) {
  device_printf(sc->nge_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.nge_busaddr = 0;
 error = bus_dmamap_load(sc->nge_cdata.nge_rx_ring_tag,
     sc->nge_cdata.nge_rx_ring_map, sc->nge_rdata.nge_rx_ring,
     NGE_RX_RING_SIZE, nge_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.nge_busaddr == 0) {
  device_printf(sc->nge_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc->nge_rdata.nge_rx_ring_paddr = ctx.nge_busaddr;


 for (i = 0; i < NGE_TX_RING_CNT; i++) {
  txd = &sc->nge_cdata.nge_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->nge_cdata.nge_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->nge_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->nge_cdata.nge_rx_tag, 0,
     &sc->nge_cdata.nge_rx_sparemap)) != 0) {
  device_printf(sc->nge_dev,
      "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < NGE_RX_RING_CNT; i++) {
  rxd = &sc->nge_cdata.nge_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->nge_cdata.nge_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->nge_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vte_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_2__ {scalar_t__ vte_tx_ring_paddr; scalar_t__ vte_rx_ring_paddr; int vte_rx_tag; struct vte_rxdesc* vte_rxdesc; int * vte_rx_sparemap; int vte_tx_tag; struct vte_txdesc* vte_txdesc; int vte_buffer_tag; int vte_rx_ring; int vte_rx_ring_map; int vte_rx_ring_tag; int vte_tx_ring; int vte_tx_ring_map; int vte_tx_ring_tag; int vte_parent_tag; } ;
struct vte_softc {int vte_dev; TYPE_1__ vte_cdata; } ;
struct vte_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct vte_dmamap_arg {scalar_t__ vte_busaddr; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int VTE_RX_BUF_ALIGN ;
 int VTE_RX_RING_ALIGN ;
 int VTE_RX_RING_CNT ;
 int VTE_RX_RING_SZ ;
 int VTE_TX_RING_ALIGN ;
 int VTE_TX_RING_CNT ;
 int VTE_TX_RING_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct vte_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int vte_dmamap_cb ;

__attribute__((used)) static int
vte_dma_alloc(struct vte_softc *sc)
{
 struct vte_txdesc *txd;
 struct vte_rxdesc *rxd;
 struct vte_dmamap_arg ctx;
 int error, i;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->vte_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->vte_cdata.vte_parent_tag);
 if (error != 0) {
  device_printf(sc->vte_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->vte_cdata.vte_parent_tag,
     VTE_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     VTE_TX_RING_SZ,
     1,
     VTE_TX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->vte_cdata.vte_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->vte_dev,
      "could not create TX ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->vte_cdata.vte_parent_tag,
     VTE_RX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     VTE_RX_RING_SZ,
     1,
     VTE_RX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->vte_cdata.vte_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->vte_dev,
      "could not create RX ring DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->vte_cdata.vte_tx_ring_tag,
     (void **)&sc->vte_cdata.vte_tx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->vte_cdata.vte_tx_ring_map);
 if (error != 0) {
  device_printf(sc->vte_dev,
      "could not allocate DMA'able memory for TX ring.\n");
  goto fail;
 }
 ctx.vte_busaddr = 0;
 error = bus_dmamap_load(sc->vte_cdata.vte_tx_ring_tag,
     sc->vte_cdata.vte_tx_ring_map, sc->vte_cdata.vte_tx_ring,
     VTE_TX_RING_SZ, vte_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.vte_busaddr == 0) {
  device_printf(sc->vte_dev,
      "could not load DMA'able memory for TX ring.\n");
  goto fail;
 }
 sc->vte_cdata.vte_tx_ring_paddr = ctx.vte_busaddr;


 error = bus_dmamem_alloc(sc->vte_cdata.vte_rx_ring_tag,
     (void **)&sc->vte_cdata.vte_rx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->vte_cdata.vte_rx_ring_map);
 if (error != 0) {
  device_printf(sc->vte_dev,
      "could not allocate DMA'able memory for RX ring.\n");
  goto fail;
 }
 ctx.vte_busaddr = 0;
 error = bus_dmamap_load(sc->vte_cdata.vte_rx_ring_tag,
     sc->vte_cdata.vte_rx_ring_map, sc->vte_cdata.vte_rx_ring,
     VTE_RX_RING_SZ, vte_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.vte_busaddr == 0) {
  device_printf(sc->vte_dev,
      "could not load DMA'able memory for RX ring.\n");
  goto fail;
 }
 sc->vte_cdata.vte_rx_ring_paddr = ctx.vte_busaddr;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->vte_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->vte_cdata.vte_buffer_tag);
 if (error != 0) {
  device_printf(sc->vte_dev,
      "could not create parent buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->vte_cdata.vte_buffer_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->vte_cdata.vte_tx_tag);
 if (error != 0) {
  device_printf(sc->vte_dev, "could not create TX DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->vte_cdata.vte_buffer_tag,
     VTE_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->vte_cdata.vte_rx_tag);
 if (error != 0) {
  device_printf(sc->vte_dev, "could not create RX DMA tag.\n");
  goto fail;
 }

 for (i = 0; i < VTE_TX_RING_CNT; i++) {
  txd = &sc->vte_cdata.vte_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->vte_cdata.vte_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->vte_dev,
       "could not create TX dmamap.\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->vte_cdata.vte_rx_tag, 0,
     &sc->vte_cdata.vte_rx_sparemap)) != 0) {
  device_printf(sc->vte_dev,
      "could not create spare RX dmamap.\n");
  goto fail;
 }
 for (i = 0; i < VTE_RX_RING_CNT; i++) {
  rxd = &sc->vte_cdata.vte_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->vte_cdata.vte_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->vte_dev,
       "could not create RX dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}

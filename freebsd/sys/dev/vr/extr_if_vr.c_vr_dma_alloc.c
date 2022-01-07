
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vr_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int vr_rx_tag; struct vr_rxdesc* vr_rxdesc; int * vr_rx_sparemap; int vr_tx_tag; struct vr_txdesc* vr_txdesc; int vr_rx_ring_map; int vr_rx_ring_tag; int vr_tx_ring_map; int vr_tx_ring_tag; int vr_parent_tag; } ;
struct TYPE_3__ {scalar_t__ vr_tx_ring_paddr; scalar_t__ vr_rx_ring_paddr; int vr_rx_ring; int vr_tx_ring; } ;
struct vr_softc {int vr_quirks; int vr_dev; TYPE_2__ vr_cdata; TYPE_1__ vr_rdata; } ;
struct vr_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct vr_dmamap_arg {scalar_t__ vr_busaddr; } ;
typedef int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int VR_MAXFRAGS ;
 int VR_Q_NEEDALIGN ;
 int VR_RING_ALIGN ;
 int VR_RX_ALIGN ;
 int VR_RX_RING_CNT ;
 int VR_RX_RING_SIZE ;
 int VR_TX_RING_CNT ;
 int VR_TX_RING_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct vr_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int vr_dmamap_cb ;

__attribute__((used)) static int
vr_dma_alloc(struct vr_softc *sc)
{
 struct vr_dmamap_arg ctx;
 struct vr_txdesc *txd;
 struct vr_rxdesc *rxd;
 bus_size_t tx_alignment;
 int error, i;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->vr_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->vr_cdata.vr_parent_tag);
 if (error != 0) {
  device_printf(sc->vr_dev, "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(
     sc->vr_cdata.vr_parent_tag,
     VR_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     VR_TX_RING_SIZE,
     1,
     VR_TX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->vr_cdata.vr_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->vr_dev, "failed to create Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->vr_cdata.vr_parent_tag,
     VR_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     VR_RX_RING_SIZE,
     1,
     VR_RX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->vr_cdata.vr_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->vr_dev, "failed to create Rx ring DMA tag\n");
  goto fail;
 }

 if ((sc->vr_quirks & VR_Q_NEEDALIGN) != 0)
  tx_alignment = sizeof(uint32_t);
 else
  tx_alignment = 1;

 error = bus_dma_tag_create(
     sc->vr_cdata.vr_parent_tag,
     tx_alignment, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * VR_MAXFRAGS,
     VR_MAXFRAGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->vr_cdata.vr_tx_tag);
 if (error != 0) {
  device_printf(sc->vr_dev, "failed to create Tx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->vr_cdata.vr_parent_tag,
     VR_RX_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->vr_cdata.vr_rx_tag);
 if (error != 0) {
  device_printf(sc->vr_dev, "failed to create Rx DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->vr_cdata.vr_tx_ring_tag,
     (void **)&sc->vr_rdata.vr_tx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->vr_cdata.vr_tx_ring_map);
 if (error != 0) {
  device_printf(sc->vr_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.vr_busaddr = 0;
 error = bus_dmamap_load(sc->vr_cdata.vr_tx_ring_tag,
     sc->vr_cdata.vr_tx_ring_map, sc->vr_rdata.vr_tx_ring,
     VR_TX_RING_SIZE, vr_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.vr_busaddr == 0) {
  device_printf(sc->vr_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc->vr_rdata.vr_tx_ring_paddr = ctx.vr_busaddr;


 error = bus_dmamem_alloc(sc->vr_cdata.vr_rx_ring_tag,
     (void **)&sc->vr_rdata.vr_rx_ring, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->vr_cdata.vr_rx_ring_map);
 if (error != 0) {
  device_printf(sc->vr_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.vr_busaddr = 0;
 error = bus_dmamap_load(sc->vr_cdata.vr_rx_ring_tag,
     sc->vr_cdata.vr_rx_ring_map, sc->vr_rdata.vr_rx_ring,
     VR_RX_RING_SIZE, vr_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.vr_busaddr == 0) {
  device_printf(sc->vr_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc->vr_rdata.vr_rx_ring_paddr = ctx.vr_busaddr;


 for (i = 0; i < VR_TX_RING_CNT; i++) {
  txd = &sc->vr_cdata.vr_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->vr_cdata.vr_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->vr_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->vr_cdata.vr_rx_tag, 0,
     &sc->vr_cdata.vr_rx_sparemap)) != 0) {
  device_printf(sc->vr_dev,
      "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < VR_RX_RING_CNT; i++) {
  rxd = &sc->vr_cdata.vr_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->vr_cdata.vr_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->vr_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}

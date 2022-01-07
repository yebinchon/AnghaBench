
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vge_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int vge_rx_tag; struct vge_rxdesc* vge_rxdesc; int * vge_rx_sparemap; int vge_tx_tag; struct vge_txdesc* vge_txdesc; int vge_buffer_tag; int vge_rx_ring_map; int vge_rx_ring_tag; int vge_tx_ring_map; int vge_tx_ring_tag; int vge_ring_tag; } ;
struct TYPE_3__ {scalar_t__ vge_tx_ring_paddr; scalar_t__ vge_rx_ring_paddr; int vge_rx_ring; int vge_tx_ring; } ;
struct vge_softc {int vge_flags; int vge_dev; TYPE_2__ vge_cdata; TYPE_1__ vge_rdata; } ;
struct vge_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct vge_dmamap_arg {scalar_t__ vge_busaddr; } ;
typedef int bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 scalar_t__ VGE_ADDR_HI (int) ;
 int VGE_BUF_DMA_MAXADDR ;
 int VGE_FLAG_PCIE ;
 int VGE_MAXTXSEGS ;
 int VGE_RX_BUF_ALIGN ;
 int VGE_RX_DESC_CNT ;
 int VGE_RX_LIST_SZ ;
 int VGE_RX_RING_ALIGN ;
 int VGE_TX_DESC_CNT ;
 int VGE_TX_LIST_SZ ;
 int VGE_TX_RING_ALIGN ;
 int bus_dma_tag_create (int ,int,int ,int,int,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct vge_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int vge_dma_free (struct vge_softc*) ;
 int vge_dmamap_cb ;

__attribute__((used)) static int
vge_dma_alloc(struct vge_softc *sc)
{
 struct vge_dmamap_arg ctx;
 struct vge_txdesc *txd;
 struct vge_rxdesc *rxd;
 bus_addr_t lowaddr, tx_ring_end, rx_ring_end;
 int error, i;
 if ((sc->vge_flags & VGE_FLAG_PCIE) != 0)
  lowaddr = BUS_SPACE_MAXADDR;
 else
  lowaddr = BUS_SPACE_MAXADDR_32BIT;

again:

 error = bus_dma_tag_create(bus_get_dma_tag(sc->vge_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->vge_cdata.vge_ring_tag);
 if (error != 0) {
  device_printf(sc->vge_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->vge_cdata.vge_ring_tag,
     VGE_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     VGE_TX_LIST_SZ,
     1,
     VGE_TX_LIST_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->vge_cdata.vge_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->vge_dev,
      "could not allocate Tx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->vge_cdata.vge_ring_tag,
     VGE_RX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     VGE_RX_LIST_SZ,
     1,
     VGE_RX_LIST_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->vge_cdata.vge_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->vge_dev,
      "could not allocate Rx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->vge_cdata.vge_tx_ring_tag,
     (void **)&sc->vge_rdata.vge_tx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->vge_cdata.vge_tx_ring_map);
 if (error != 0) {
  device_printf(sc->vge_dev,
      "could not allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }

 ctx.vge_busaddr = 0;
 error = bus_dmamap_load(sc->vge_cdata.vge_tx_ring_tag,
     sc->vge_cdata.vge_tx_ring_map, sc->vge_rdata.vge_tx_ring,
     VGE_TX_LIST_SZ, vge_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.vge_busaddr == 0) {
  device_printf(sc->vge_dev,
      "could not load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->vge_rdata.vge_tx_ring_paddr = ctx.vge_busaddr;


 error = bus_dmamem_alloc(sc->vge_cdata.vge_rx_ring_tag,
     (void **)&sc->vge_rdata.vge_rx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->vge_cdata.vge_rx_ring_map);
 if (error != 0) {
  device_printf(sc->vge_dev,
      "could not allocate DMA'able memory for Rx ring.\n");
  goto fail;
 }

 ctx.vge_busaddr = 0;
 error = bus_dmamap_load(sc->vge_cdata.vge_rx_ring_tag,
     sc->vge_cdata.vge_rx_ring_map, sc->vge_rdata.vge_rx_ring,
     VGE_RX_LIST_SZ, vge_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.vge_busaddr == 0) {
  device_printf(sc->vge_dev,
      "could not load DMA'able memory for Rx ring.\n");
  goto fail;
 }
 sc->vge_rdata.vge_rx_ring_paddr = ctx.vge_busaddr;


 tx_ring_end = sc->vge_rdata.vge_tx_ring_paddr + VGE_TX_LIST_SZ;
 rx_ring_end = sc->vge_rdata.vge_rx_ring_paddr + VGE_RX_LIST_SZ;
 if ((VGE_ADDR_HI(tx_ring_end) !=
     VGE_ADDR_HI(sc->vge_rdata.vge_tx_ring_paddr)) ||
     (VGE_ADDR_HI(rx_ring_end) !=
     VGE_ADDR_HI(sc->vge_rdata.vge_rx_ring_paddr)) ||
     VGE_ADDR_HI(tx_ring_end) != VGE_ADDR_HI(rx_ring_end)) {
  device_printf(sc->vge_dev, "4GB boundary crossed, "
      "switching to 32bit DMA address mode.\n");
  vge_dma_free(sc);

  lowaddr = BUS_SPACE_MAXADDR_32BIT;
  goto again;
 }

 if ((sc->vge_flags & VGE_FLAG_PCIE) != 0)
  lowaddr = VGE_BUF_DMA_MAXADDR;
 else
  lowaddr = BUS_SPACE_MAXADDR_32BIT;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->vge_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->vge_cdata.vge_buffer_tag);
 if (error != 0) {
  device_printf(sc->vge_dev,
      "could not create parent buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->vge_cdata.vge_buffer_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * VGE_MAXTXSEGS,
     VGE_MAXTXSEGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->vge_cdata.vge_tx_tag);
 if (error != 0) {
  device_printf(sc->vge_dev, "could not create Tx DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->vge_cdata.vge_buffer_tag,
     VGE_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->vge_cdata.vge_rx_tag);
 if (error != 0) {
  device_printf(sc->vge_dev, "could not create Rx DMA tag.\n");
  goto fail;
 }


 for (i = 0; i < VGE_TX_DESC_CNT; i++) {
  txd = &sc->vge_cdata.vge_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->vge_cdata.vge_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->vge_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->vge_cdata.vge_rx_tag, 0,
     &sc->vge_cdata.vge_rx_sparemap)) != 0) {
  device_printf(sc->vge_dev,
      "could not create spare Rx dmamap.\n");
  goto fail;
 }
 for (i = 0; i < VGE_RX_DESC_CNT; i++) {
  rxd = &sc->vge_cdata.vge_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->vge_cdata.vge_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->vge_dev,
       "could not create Rx dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}

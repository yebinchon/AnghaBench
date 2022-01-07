
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ale_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {scalar_t__ ale_tx_ring_paddr; scalar_t__ ale_tx_cmb_paddr; int ale_tx_tag; struct ale_txdesc* ale_txdesc; int ale_buffer_tag; TYPE_1__* ale_rx_page; int ale_tx_cmb; int ale_tx_cmb_map; int ale_tx_cmb_tag; int ale_tx_ring; int ale_tx_ring_map; int ale_tx_ring_tag; int ale_parent_tag; } ;
struct ale_softc {int ale_flags; int ale_dev; TYPE_2__ ale_cdata; int ale_pagesize; } ;
struct ale_dmamap_arg {scalar_t__ ale_busaddr; } ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_3__ {scalar_t__ page_paddr; scalar_t__ cmb_paddr; int cmb_addr; int cmb_map; int cmb_tag; int page_addr; int page_map; int page_tag; } ;


 int ALE_CMB_ALIGN ;
 int ALE_FLAG_JUMBO ;
 int ALE_JUMBO_FRAMELEN ;
 int ALE_MAXTXSEGS ;
 int ALE_MAX_FRAMELEN ;
 int ALE_RX_CMB_SZ ;
 int ALE_RX_PAGES ;
 int ALE_RX_PAGE_ALIGN ;
 scalar_t__ ALE_RX_PAGE_SZ ;
 int ALE_TSO_MAXSEGSIZE ;
 int ALE_TSO_MAXSIZE ;
 int ALE_TX_CMB_SZ ;
 int ALE_TX_RING_ALIGN ;
 int ALE_TX_RING_CNT ;
 int ALE_TX_RING_SZ ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ale_check_boundary (struct ale_softc*) ;
 int ale_dma_free (struct ale_softc*) ;
 int ale_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,scalar_t__,scalar_t__,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct ale_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,...) ;
 int roundup (scalar_t__,int) ;

__attribute__((used)) static int
ale_dma_alloc(struct ale_softc *sc)
{
 struct ale_txdesc *txd;
 bus_addr_t lowaddr;
 struct ale_dmamap_arg ctx;
 int error, guard_size, i;

 if ((sc->ale_flags & ALE_FLAG_JUMBO) != 0)
  guard_size = ALE_JUMBO_FRAMELEN;
 else
  guard_size = ALE_MAX_FRAMELEN;
 sc->ale_pagesize = roundup(guard_size + ALE_RX_PAGE_SZ,
     ALE_RX_PAGE_ALIGN);
 lowaddr = BUS_SPACE_MAXADDR;
again:

 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->ale_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->ale_cdata.ale_parent_tag);
 if (error != 0) {
  device_printf(sc->ale_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->ale_cdata.ale_parent_tag,
     ALE_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALE_TX_RING_SZ,
     1,
     ALE_TX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->ale_cdata.ale_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->ale_dev,
      "could not create Tx ring DMA tag.\n");
  goto fail;
 }


 for (i = 0; i < ALE_RX_PAGES; i++) {
  error = bus_dma_tag_create(
      sc->ale_cdata.ale_parent_tag,
      ALE_RX_PAGE_ALIGN, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      sc->ale_pagesize,
      1,
      sc->ale_pagesize,
      0,
      ((void*)0), ((void*)0),
      &sc->ale_cdata.ale_rx_page[i].page_tag);
  if (error != 0) {
   device_printf(sc->ale_dev,
       "could not create Rx page %d DMA tag.\n", i);
   goto fail;
  }
 }


 error = bus_dma_tag_create(
     sc->ale_cdata.ale_parent_tag,
     ALE_CMB_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALE_TX_CMB_SZ,
     1,
     ALE_TX_CMB_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->ale_cdata.ale_tx_cmb_tag);
 if (error != 0) {
  device_printf(sc->ale_dev,
      "could not create Tx CMB DMA tag.\n");
  goto fail;
 }


 for (i = 0; i < ALE_RX_PAGES; i++) {
  error = bus_dma_tag_create(
      sc->ale_cdata.ale_parent_tag,
      ALE_CMB_ALIGN, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      ALE_RX_CMB_SZ,
      1,
      ALE_RX_CMB_SZ,
      0,
      ((void*)0), ((void*)0),
      &sc->ale_cdata.ale_rx_page[i].cmb_tag);
  if (error != 0) {
   device_printf(sc->ale_dev,
       "could not create Rx page %d CMB DMA tag.\n", i);
   goto fail;
  }
 }


 error = bus_dmamem_alloc(sc->ale_cdata.ale_tx_ring_tag,
     (void **)&sc->ale_cdata.ale_tx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->ale_cdata.ale_tx_ring_map);
 if (error != 0) {
  device_printf(sc->ale_dev,
      "could not allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }
 ctx.ale_busaddr = 0;
 error = bus_dmamap_load(sc->ale_cdata.ale_tx_ring_tag,
     sc->ale_cdata.ale_tx_ring_map, sc->ale_cdata.ale_tx_ring,
     ALE_TX_RING_SZ, ale_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.ale_busaddr == 0) {
  device_printf(sc->ale_dev,
      "could not load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->ale_cdata.ale_tx_ring_paddr = ctx.ale_busaddr;


 for (i = 0; i < ALE_RX_PAGES; i++) {
  error = bus_dmamem_alloc(sc->ale_cdata.ale_rx_page[i].page_tag,
      (void **)&sc->ale_cdata.ale_rx_page[i].page_addr,
      BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
      &sc->ale_cdata.ale_rx_page[i].page_map);
  if (error != 0) {
   device_printf(sc->ale_dev,
       "could not allocate DMA'able memory for "
       "Rx page %d.\n", i);
   goto fail;
  }
  ctx.ale_busaddr = 0;
  error = bus_dmamap_load(sc->ale_cdata.ale_rx_page[i].page_tag,
      sc->ale_cdata.ale_rx_page[i].page_map,
      sc->ale_cdata.ale_rx_page[i].page_addr,
      sc->ale_pagesize, ale_dmamap_cb, &ctx, 0);
  if (error != 0 || ctx.ale_busaddr == 0) {
   device_printf(sc->ale_dev,
       "could not load DMA'able memory for "
       "Rx page %d.\n", i);
   goto fail;
  }
  sc->ale_cdata.ale_rx_page[i].page_paddr = ctx.ale_busaddr;
 }


 error = bus_dmamem_alloc(sc->ale_cdata.ale_tx_cmb_tag,
     (void **)&sc->ale_cdata.ale_tx_cmb,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->ale_cdata.ale_tx_cmb_map);
 if (error != 0) {
  device_printf(sc->ale_dev,
      "could not allocate DMA'able memory for Tx CMB.\n");
  goto fail;
 }
 ctx.ale_busaddr = 0;
 error = bus_dmamap_load(sc->ale_cdata.ale_tx_cmb_tag,
     sc->ale_cdata.ale_tx_cmb_map, sc->ale_cdata.ale_tx_cmb,
     ALE_TX_CMB_SZ, ale_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.ale_busaddr == 0) {
  device_printf(sc->ale_dev,
      "could not load DMA'able memory for Tx CMB.\n");
  goto fail;
 }
 sc->ale_cdata.ale_tx_cmb_paddr = ctx.ale_busaddr;


 for (i = 0; i < ALE_RX_PAGES; i++) {
  error = bus_dmamem_alloc(sc->ale_cdata.ale_rx_page[i].cmb_tag,
      (void **)&sc->ale_cdata.ale_rx_page[i].cmb_addr,
      BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
      &sc->ale_cdata.ale_rx_page[i].cmb_map);
  if (error != 0) {
   device_printf(sc->ale_dev, "could not allocate "
       "DMA'able memory for Rx page %d CMB.\n", i);
   goto fail;
  }
  ctx.ale_busaddr = 0;
  error = bus_dmamap_load(sc->ale_cdata.ale_rx_page[i].cmb_tag,
      sc->ale_cdata.ale_rx_page[i].cmb_map,
      sc->ale_cdata.ale_rx_page[i].cmb_addr,
      ALE_RX_CMB_SZ, ale_dmamap_cb, &ctx, 0);
  if (error != 0 || ctx.ale_busaddr == 0) {
   device_printf(sc->ale_dev, "could not load DMA'able "
       "memory for Rx page %d CMB.\n", i);
   goto fail;
  }
  sc->ale_cdata.ale_rx_page[i].cmb_paddr = ctx.ale_busaddr;
 }





 if (lowaddr != BUS_SPACE_MAXADDR_32BIT &&
     (error = ale_check_boundary(sc)) != 0) {
  device_printf(sc->ale_dev, "4GB boundary crossed, "
      "switching to 32bit DMA addressing mode.\n");
  ale_dma_free(sc);




  lowaddr = BUS_SPACE_MAXADDR_32BIT;
  goto again;
 }
 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->ale_dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->ale_cdata.ale_buffer_tag);
 if (error != 0) {
  device_printf(sc->ale_dev,
      "could not create parent buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->ale_cdata.ale_buffer_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALE_TSO_MAXSIZE,
     ALE_MAXTXSEGS,
     ALE_TSO_MAXSEGSIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->ale_cdata.ale_tx_tag);
 if (error != 0) {
  device_printf(sc->ale_dev, "could not create Tx DMA tag.\n");
  goto fail;
 }


 for (i = 0; i < ALE_TX_RING_CNT; i++) {
  txd = &sc->ale_cdata.ale_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->ale_cdata.ale_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->ale_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}

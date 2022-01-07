
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct age_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int age_rx_tag; struct age_rxdesc* age_rxdesc; int * age_rx_sparemap; int age_tx_tag; struct age_txdesc* age_txdesc; int age_buffer_tag; int age_smb_block_map; int age_smb_block_tag; int age_cmb_block_map; int age_cmb_block_tag; int age_rr_ring_map; int age_rr_ring_tag; int age_rx_ring_map; int age_rx_ring_tag; int age_tx_ring_map; int age_tx_ring_tag; int age_parent_tag; } ;
struct TYPE_3__ {scalar_t__ age_tx_ring_paddr; scalar_t__ age_rx_ring_paddr; scalar_t__ age_rr_ring_paddr; scalar_t__ age_cmb_block_paddr; scalar_t__ age_smb_block_paddr; int age_smb_block; int age_cmb_block; int age_rr_ring; int age_rx_ring; int age_tx_ring; } ;
struct age_softc {int age_dev; TYPE_2__ age_cdata; TYPE_1__ age_rdata; } ;
struct age_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct age_dmamap_arg {scalar_t__ age_busaddr; } ;
typedef scalar_t__ bus_addr_t ;


 int AGE_CMB_ALIGN ;
 int AGE_CMB_BLOCK_SZ ;
 int AGE_MAXTXSEGS ;
 int AGE_RR_RING_ALIGN ;
 int AGE_RR_RING_SZ ;
 int AGE_RX_BUF_ALIGN ;
 int AGE_RX_RING_ALIGN ;
 int AGE_RX_RING_CNT ;
 int AGE_RX_RING_SZ ;
 int AGE_SMB_ALIGN ;
 int AGE_SMB_BLOCK_SZ ;
 int AGE_TSO_MAXSEGSIZE ;
 int AGE_TSO_MAXSIZE ;
 int AGE_TX_RING_ALIGN ;
 int AGE_TX_RING_CNT ;
 int AGE_TX_RING_SZ ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int age_check_boundary (struct age_softc*) ;
 int age_dma_free (struct age_softc*) ;
 int age_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,scalar_t__,scalar_t__,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct age_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
age_dma_alloc(struct age_softc *sc)
{
 struct age_txdesc *txd;
 struct age_rxdesc *rxd;
 bus_addr_t lowaddr;
 struct age_dmamap_arg ctx;
 int error, i;

 lowaddr = BUS_SPACE_MAXADDR;

again:

 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->age_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_parent_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_parent_tag,
     AGE_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AGE_TX_RING_SZ,
     1,
     AGE_TX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create Tx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_parent_tag,
     AGE_RX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AGE_RX_RING_SZ,
     1,
     AGE_RX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create Rx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_parent_tag,
     AGE_RR_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AGE_RR_RING_SZ,
     1,
     AGE_RR_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_rr_ring_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create Rx return ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_parent_tag,
     AGE_CMB_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AGE_CMB_BLOCK_SZ,
     1,
     AGE_CMB_BLOCK_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_cmb_block_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create CMB DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_parent_tag,
     AGE_SMB_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AGE_SMB_BLOCK_SZ,
     1,
     AGE_SMB_BLOCK_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_smb_block_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create SMB DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->age_cdata.age_tx_ring_tag,
     (void **)&sc->age_rdata.age_tx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->age_cdata.age_tx_ring_map);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }
 ctx.age_busaddr = 0;
 error = bus_dmamap_load(sc->age_cdata.age_tx_ring_tag,
     sc->age_cdata.age_tx_ring_map, sc->age_rdata.age_tx_ring,
     AGE_TX_RING_SZ, age_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.age_busaddr == 0) {
  device_printf(sc->age_dev,
      "could not load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->age_rdata.age_tx_ring_paddr = ctx.age_busaddr;

 error = bus_dmamem_alloc(sc->age_cdata.age_rx_ring_tag,
     (void **)&sc->age_rdata.age_rx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->age_cdata.age_rx_ring_map);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not allocate DMA'able memory for Rx ring.\n");
  goto fail;
 }
 ctx.age_busaddr = 0;
 error = bus_dmamap_load(sc->age_cdata.age_rx_ring_tag,
     sc->age_cdata.age_rx_ring_map, sc->age_rdata.age_rx_ring,
     AGE_RX_RING_SZ, age_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.age_busaddr == 0) {
  device_printf(sc->age_dev,
      "could not load DMA'able memory for Rx ring.\n");
  goto fail;
 }
 sc->age_rdata.age_rx_ring_paddr = ctx.age_busaddr;

 error = bus_dmamem_alloc(sc->age_cdata.age_rr_ring_tag,
     (void **)&sc->age_rdata.age_rr_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->age_cdata.age_rr_ring_map);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not allocate DMA'able memory for Rx return ring.\n");
  goto fail;
 }
 ctx.age_busaddr = 0;
 error = bus_dmamap_load(sc->age_cdata.age_rr_ring_tag,
     sc->age_cdata.age_rr_ring_map, sc->age_rdata.age_rr_ring,
     AGE_RR_RING_SZ, age_dmamap_cb,
     &ctx, 0);
 if (error != 0 || ctx.age_busaddr == 0) {
  device_printf(sc->age_dev,
      "could not load DMA'able memory for Rx return ring.\n");
  goto fail;
 }
 sc->age_rdata.age_rr_ring_paddr = ctx.age_busaddr;

 error = bus_dmamem_alloc(sc->age_cdata.age_cmb_block_tag,
     (void **)&sc->age_rdata.age_cmb_block,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->age_cdata.age_cmb_block_map);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not allocate DMA'able memory for CMB block.\n");
  goto fail;
 }
 ctx.age_busaddr = 0;
 error = bus_dmamap_load(sc->age_cdata.age_cmb_block_tag,
     sc->age_cdata.age_cmb_block_map, sc->age_rdata.age_cmb_block,
     AGE_CMB_BLOCK_SZ, age_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.age_busaddr == 0) {
  device_printf(sc->age_dev,
      "could not load DMA'able memory for CMB block.\n");
  goto fail;
 }
 sc->age_rdata.age_cmb_block_paddr = ctx.age_busaddr;

 error = bus_dmamem_alloc(sc->age_cdata.age_smb_block_tag,
     (void **)&sc->age_rdata.age_smb_block,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->age_cdata.age_smb_block_map);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not allocate DMA'able memory for SMB block.\n");
  goto fail;
 }
 ctx.age_busaddr = 0;
 error = bus_dmamap_load(sc->age_cdata.age_smb_block_tag,
     sc->age_cdata.age_smb_block_map, sc->age_rdata.age_smb_block,
     AGE_SMB_BLOCK_SZ, age_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.age_busaddr == 0) {
  device_printf(sc->age_dev,
      "could not load DMA'able memory for SMB block.\n");
  goto fail;
 }
 sc->age_rdata.age_smb_block_paddr = ctx.age_busaddr;





 if (lowaddr != BUS_SPACE_MAXADDR_32BIT &&
     (error = age_check_boundary(sc)) != 0) {
  device_printf(sc->age_dev, "4GB boundary crossed, "
      "switching to 32bit DMA addressing mode.\n");
  age_dma_free(sc);

  lowaddr = BUS_SPACE_MAXADDR_32BIT;
  goto again;
 }
 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->age_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_buffer_tag);
 if (error != 0) {
  device_printf(sc->age_dev,
      "could not create parent buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_buffer_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AGE_TSO_MAXSIZE,
     AGE_MAXTXSEGS,
     AGE_TSO_MAXSEGSIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_tx_tag);
 if (error != 0) {
  device_printf(sc->age_dev, "could not create Tx DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->age_cdata.age_buffer_tag,
     AGE_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->age_cdata.age_rx_tag);
 if (error != 0) {
  device_printf(sc->age_dev, "could not create Rx DMA tag.\n");
  goto fail;
 }


 for (i = 0; i < AGE_TX_RING_CNT; i++) {
  txd = &sc->age_cdata.age_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->age_cdata.age_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->age_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->age_cdata.age_rx_tag, 0,
     &sc->age_cdata.age_rx_sparemap)) != 0) {
  device_printf(sc->age_dev,
      "could not create spare Rx dmamap.\n");
  goto fail;
 }
 for (i = 0; i < AGE_RX_RING_CNT; i++) {
  rxd = &sc->age_cdata.age_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->age_cdata.age_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->age_dev,
       "could not create Rx dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}

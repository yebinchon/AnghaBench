
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct alc_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int alc_rx_tag; struct alc_rxdesc* alc_rxdesc; int * alc_rx_sparemap; int alc_tx_tag; struct alc_txdesc* alc_txdesc; int alc_buffer_tag; int alc_smb_map; int alc_smb_tag; int alc_cmb_map; int alc_cmb_tag; int alc_rr_ring_map; int alc_rr_ring_tag; int alc_rx_ring_map; int alc_rx_ring_tag; int alc_tx_ring_map; int alc_tx_ring_tag; int alc_parent_tag; } ;
struct TYPE_3__ {scalar_t__ alc_tx_ring_paddr; scalar_t__ alc_rx_ring_paddr; scalar_t__ alc_rr_ring_paddr; scalar_t__ alc_cmb_paddr; scalar_t__ alc_smb_paddr; int alc_smb; int alc_cmb; int alc_rr_ring; int alc_rx_ring; int alc_tx_ring; } ;
struct alc_softc {int alc_dev; TYPE_2__ alc_cdata; TYPE_1__ alc_rdata; } ;
struct alc_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct alc_dmamap_arg {scalar_t__ alc_busaddr; } ;
typedef scalar_t__ bus_addr_t ;


 int ALC_CMB_ALIGN ;
 int ALC_CMB_SZ ;
 int ALC_MAXTXSEGS ;
 int ALC_RR_RING_ALIGN ;
 int ALC_RR_RING_SZ ;
 int ALC_RX_BUF_ALIGN ;
 int ALC_RX_RING_ALIGN ;
 int ALC_RX_RING_CNT ;
 int ALC_RX_RING_SZ ;
 int ALC_SMB_ALIGN ;
 int ALC_SMB_SZ ;
 int ALC_TSO_MAXSEGSIZE ;
 int ALC_TSO_MAXSIZE ;
 int ALC_TX_RING_ALIGN ;
 int ALC_TX_RING_CNT ;
 int ALC_TX_RING_SZ ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int alc_check_boundary (struct alc_softc*) ;
 int alc_dma_free (struct alc_softc*) ;
 int alc_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,scalar_t__,scalar_t__,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct alc_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
alc_dma_alloc(struct alc_softc *sc)
{
 struct alc_txdesc *txd;
 struct alc_rxdesc *rxd;
 bus_addr_t lowaddr;
 struct alc_dmamap_arg ctx;
 int error, i;

 lowaddr = BUS_SPACE_MAXADDR;
again:

 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->alc_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_parent_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->alc_cdata.alc_parent_tag,
     ALC_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALC_TX_RING_SZ,
     1,
     ALC_TX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create Tx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->alc_cdata.alc_parent_tag,
     ALC_RX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALC_RX_RING_SZ,
     1,
     ALC_RX_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create Rx ring DMA tag.\n");
  goto fail;
 }

 error = bus_dma_tag_create(
     sc->alc_cdata.alc_parent_tag,
     ALC_RR_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALC_RR_RING_SZ,
     1,
     ALC_RR_RING_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_rr_ring_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create Rx return ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->alc_cdata.alc_parent_tag,
     ALC_CMB_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALC_CMB_SZ,
     1,
     ALC_CMB_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_cmb_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create CMB DMA tag.\n");
  goto fail;
 }

 error = bus_dma_tag_create(
     sc->alc_cdata.alc_parent_tag,
     ALC_SMB_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALC_SMB_SZ,
     1,
     ALC_SMB_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_smb_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create SMB DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->alc_cdata.alc_tx_ring_tag,
     (void **)&sc->alc_rdata.alc_tx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->alc_cdata.alc_tx_ring_map);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }
 ctx.alc_busaddr = 0;
 error = bus_dmamap_load(sc->alc_cdata.alc_tx_ring_tag,
     sc->alc_cdata.alc_tx_ring_map, sc->alc_rdata.alc_tx_ring,
     ALC_TX_RING_SZ, alc_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.alc_busaddr == 0) {
  device_printf(sc->alc_dev,
      "could not load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->alc_rdata.alc_tx_ring_paddr = ctx.alc_busaddr;


 error = bus_dmamem_alloc(sc->alc_cdata.alc_rx_ring_tag,
     (void **)&sc->alc_rdata.alc_rx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->alc_cdata.alc_rx_ring_map);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not allocate DMA'able memory for Rx ring.\n");
  goto fail;
 }
 ctx.alc_busaddr = 0;
 error = bus_dmamap_load(sc->alc_cdata.alc_rx_ring_tag,
     sc->alc_cdata.alc_rx_ring_map, sc->alc_rdata.alc_rx_ring,
     ALC_RX_RING_SZ, alc_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.alc_busaddr == 0) {
  device_printf(sc->alc_dev,
      "could not load DMA'able memory for Rx ring.\n");
  goto fail;
 }
 sc->alc_rdata.alc_rx_ring_paddr = ctx.alc_busaddr;


 error = bus_dmamem_alloc(sc->alc_cdata.alc_rr_ring_tag,
     (void **)&sc->alc_rdata.alc_rr_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->alc_cdata.alc_rr_ring_map);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not allocate DMA'able memory for Rx return ring.\n");
  goto fail;
 }
 ctx.alc_busaddr = 0;
 error = bus_dmamap_load(sc->alc_cdata.alc_rr_ring_tag,
     sc->alc_cdata.alc_rr_ring_map, sc->alc_rdata.alc_rr_ring,
     ALC_RR_RING_SZ, alc_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.alc_busaddr == 0) {
  device_printf(sc->alc_dev,
      "could not load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->alc_rdata.alc_rr_ring_paddr = ctx.alc_busaddr;


 error = bus_dmamem_alloc(sc->alc_cdata.alc_cmb_tag,
     (void **)&sc->alc_rdata.alc_cmb,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->alc_cdata.alc_cmb_map);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not allocate DMA'able memory for CMB.\n");
  goto fail;
 }
 ctx.alc_busaddr = 0;
 error = bus_dmamap_load(sc->alc_cdata.alc_cmb_tag,
     sc->alc_cdata.alc_cmb_map, sc->alc_rdata.alc_cmb,
     ALC_CMB_SZ, alc_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.alc_busaddr == 0) {
  device_printf(sc->alc_dev,
      "could not load DMA'able memory for CMB.\n");
  goto fail;
 }
 sc->alc_rdata.alc_cmb_paddr = ctx.alc_busaddr;


 error = bus_dmamem_alloc(sc->alc_cdata.alc_smb_tag,
     (void **)&sc->alc_rdata.alc_smb,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->alc_cdata.alc_smb_map);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not allocate DMA'able memory for SMB.\n");
  goto fail;
 }
 ctx.alc_busaddr = 0;
 error = bus_dmamap_load(sc->alc_cdata.alc_smb_tag,
     sc->alc_cdata.alc_smb_map, sc->alc_rdata.alc_smb,
     ALC_SMB_SZ, alc_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.alc_busaddr == 0) {
  device_printf(sc->alc_dev,
      "could not load DMA'able memory for CMB.\n");
  goto fail;
 }
 sc->alc_rdata.alc_smb_paddr = ctx.alc_busaddr;


 if (lowaddr != BUS_SPACE_MAXADDR_32BIT &&
     (error = alc_check_boundary(sc)) != 0) {
  device_printf(sc->alc_dev, "4GB boundary crossed, "
      "switching to 32bit DMA addressing mode.\n");
  alc_dma_free(sc);




  lowaddr = BUS_SPACE_MAXADDR_32BIT;
  goto again;
 }
 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->alc_dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_buffer_tag);
 if (error != 0) {
  device_printf(sc->alc_dev,
      "could not create parent buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->alc_cdata.alc_buffer_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ALC_TSO_MAXSIZE,
     ALC_MAXTXSEGS,
     ALC_TSO_MAXSEGSIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_tx_tag);
 if (error != 0) {
  device_printf(sc->alc_dev, "could not create Tx DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->alc_cdata.alc_buffer_tag,
     ALC_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->alc_cdata.alc_rx_tag);
 if (error != 0) {
  device_printf(sc->alc_dev, "could not create Rx DMA tag.\n");
  goto fail;
 }

 for (i = 0; i < ALC_TX_RING_CNT; i++) {
  txd = &sc->alc_cdata.alc_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->alc_cdata.alc_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->alc_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->alc_cdata.alc_rx_tag, 0,
     &sc->alc_cdata.alc_rx_sparemap)) != 0) {
  device_printf(sc->alc_dev,
      "could not create spare Rx dmamap.\n");
  goto fail;
 }
 for (i = 0; i < ALC_RX_RING_CNT; i++) {
  rxd = &sc->alc_cdata.alc_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->alc_cdata.alc_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->alc_dev,
       "could not create Rx dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}

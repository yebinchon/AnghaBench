
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jme_txdesc {int * tx_dmamap; int * tx_m; } ;
struct TYPE_4__ {int jme_rx_tag; struct jme_rxdesc* jme_rxdesc; int * jme_rx_sparemap; int jme_tx_tag; struct jme_txdesc* jme_txdesc; int jme_ssb_map; int jme_ssb_tag; int jme_buffer_tag; int jme_rx_ring_map; int jme_rx_ring_tag; int jme_tx_ring_map; int jme_tx_ring_tag; int jme_ring_tag; } ;
struct TYPE_3__ {scalar_t__ jme_tx_ring_paddr; scalar_t__ jme_rx_ring_paddr; scalar_t__ jme_ssb_block_paddr; int jme_ssb_block; int jme_rx_ring; int jme_tx_ring; } ;
struct jme_softc {int jme_flags; int jme_dev; TYPE_2__ jme_cdata; TYPE_1__ jme_rdata; } ;
struct jme_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct jme_dmamap_arg {scalar_t__ jme_busaddr; } ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 scalar_t__ BUS_SPACE_MAXSIZE_32BIT ;
 scalar_t__ JME_ADDR_HI (scalar_t__) ;
 int JME_FLAG_DMA32BIT ;
 int JME_MAXTXSEGS ;
 int JME_RX_BUF_ALIGN ;
 int JME_RX_RING_ALIGN ;
 int JME_RX_RING_CNT ;
 scalar_t__ JME_RX_RING_SIZE ;
 int JME_SSB_ALIGN ;
 scalar_t__ JME_SSB_SIZE ;
 scalar_t__ JME_TSO_MAXSEGSIZE ;
 scalar_t__ JME_TSO_MAXSIZE ;
 int JME_TX_RING_ALIGN ;
 int JME_TX_RING_CNT ;
 scalar_t__ JME_TX_RING_SIZE ;
 scalar_t__ MCLBYTES ;
 int bus_dma_tag_create (int ,int,int ,scalar_t__,scalar_t__,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,scalar_t__,int ,struct jme_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int jme_dma_free (struct jme_softc*) ;
 int jme_dmamap_cb ;

__attribute__((used)) static int
jme_dma_alloc(struct jme_softc *sc)
{
 struct jme_dmamap_arg ctx;
 struct jme_txdesc *txd;
 struct jme_rxdesc *rxd;
 bus_addr_t lowaddr, rx_ring_end, tx_ring_end;
 int error, i;

 lowaddr = BUS_SPACE_MAXADDR;
 if ((sc->jme_flags & JME_FLAG_DMA32BIT) != 0)
  lowaddr = BUS_SPACE_MAXADDR_32BIT;

again:

 error = bus_dma_tag_create(bus_get_dma_tag(sc->jme_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_ring_tag);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not create parent ring DMA tag.\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc->jme_cdata.jme_ring_tag,
     JME_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     JME_TX_RING_SIZE,
     1,
     JME_TX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not allocate Tx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->jme_cdata.jme_ring_tag,
     JME_RX_RING_ALIGN, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     JME_RX_RING_SIZE,
     1,
     JME_RX_RING_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not allocate Rx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->jme_cdata.jme_tx_ring_tag,
     (void **)&sc->jme_rdata.jme_tx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->jme_cdata.jme_tx_ring_map);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }

 ctx.jme_busaddr = 0;
 error = bus_dmamap_load(sc->jme_cdata.jme_tx_ring_tag,
     sc->jme_cdata.jme_tx_ring_map, sc->jme_rdata.jme_tx_ring,
     JME_TX_RING_SIZE, jme_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.jme_busaddr == 0) {
  device_printf(sc->jme_dev,
      "could not load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->jme_rdata.jme_tx_ring_paddr = ctx.jme_busaddr;


 error = bus_dmamem_alloc(sc->jme_cdata.jme_rx_ring_tag,
     (void **)&sc->jme_rdata.jme_rx_ring,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->jme_cdata.jme_rx_ring_map);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not allocate DMA'able memory for Rx ring.\n");
  goto fail;
 }

 ctx.jme_busaddr = 0;
 error = bus_dmamap_load(sc->jme_cdata.jme_rx_ring_tag,
     sc->jme_cdata.jme_rx_ring_map, sc->jme_rdata.jme_rx_ring,
     JME_RX_RING_SIZE, jme_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.jme_busaddr == 0) {
  device_printf(sc->jme_dev,
      "could not load DMA'able memory for Rx ring.\n");
  goto fail;
 }
 sc->jme_rdata.jme_rx_ring_paddr = ctx.jme_busaddr;

 if (lowaddr != BUS_SPACE_MAXADDR_32BIT) {

  tx_ring_end = sc->jme_rdata.jme_tx_ring_paddr +
      JME_TX_RING_SIZE;
  rx_ring_end = sc->jme_rdata.jme_rx_ring_paddr +
      JME_RX_RING_SIZE;
  if ((JME_ADDR_HI(tx_ring_end) !=
      JME_ADDR_HI(sc->jme_rdata.jme_tx_ring_paddr)) ||
      (JME_ADDR_HI(rx_ring_end) !=
       JME_ADDR_HI(sc->jme_rdata.jme_rx_ring_paddr))) {
   device_printf(sc->jme_dev, "4GB boundary crossed, "
       "switching to 32bit DMA address mode.\n");
   jme_dma_free(sc);

   lowaddr = BUS_SPACE_MAXADDR_32BIT;
   goto again;
  }
 }

 lowaddr = BUS_SPACE_MAXADDR;
 if ((sc->jme_flags & JME_FLAG_DMA32BIT) != 0)
  lowaddr = BUS_SPACE_MAXADDR_32BIT;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->jme_dev),
     1, 0,
     lowaddr,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_buffer_tag);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not create parent buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->jme_cdata.jme_buffer_tag,
     JME_SSB_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     JME_SSB_SIZE,
     1,
     JME_SSB_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_ssb_tag);
 if (error != 0) {
  device_printf(sc->jme_dev,
      "could not create shared status block DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->jme_cdata.jme_buffer_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     JME_TSO_MAXSIZE,
     JME_MAXTXSEGS,
     JME_TSO_MAXSEGSIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_tx_tag);
 if (error != 0) {
  device_printf(sc->jme_dev, "could not create Tx DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->jme_cdata.jme_buffer_tag,
     JME_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->jme_cdata.jme_rx_tag);
 if (error != 0) {
  device_printf(sc->jme_dev, "could not create Rx DMA tag.\n");
  goto fail;
 }





 error = bus_dmamem_alloc(sc->jme_cdata.jme_ssb_tag,
     (void **)&sc->jme_rdata.jme_ssb_block,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->jme_cdata.jme_ssb_map);
 if (error != 0) {
  device_printf(sc->jme_dev, "could not allocate DMA'able "
      "memory for shared status block.\n");
  goto fail;
 }

 ctx.jme_busaddr = 0;
 error = bus_dmamap_load(sc->jme_cdata.jme_ssb_tag,
     sc->jme_cdata.jme_ssb_map, sc->jme_rdata.jme_ssb_block,
     JME_SSB_SIZE, jme_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.jme_busaddr == 0) {
  device_printf(sc->jme_dev, "could not load DMA'able memory "
      "for shared status block.\n");
  goto fail;
 }
 sc->jme_rdata.jme_ssb_block_paddr = ctx.jme_busaddr;


 for (i = 0; i < JME_TX_RING_CNT; i++) {
  txd = &sc->jme_cdata.jme_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->jme_cdata.jme_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->jme_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->jme_cdata.jme_rx_tag, 0,
     &sc->jme_cdata.jme_rx_sparemap)) != 0) {
  device_printf(sc->jme_dev,
      "could not create spare Rx dmamap.\n");
  goto fail;
 }
 for (i = 0; i < JME_RX_RING_CNT; i++) {
  rxd = &sc->jme_cdata.jme_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc->jme_cdata.jme_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->jme_dev,
       "could not create Rx dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stge_txdesc {scalar_t__ tx_dmamap; int * tx_m; } ;
struct TYPE_3__ {int stge_rx_tag; struct stge_rxdesc* stge_rxdesc; scalar_t__ stge_rx_sparemap; int stge_tx_tag; struct stge_txdesc* stge_txdesc; int stge_rx_ring_map; int stge_rx_ring_tag; int stge_tx_ring_map; int stge_tx_ring_tag; int stge_parent_tag; } ;
struct TYPE_4__ {scalar_t__ stge_tx_ring_paddr; scalar_t__ stge_rx_ring_paddr; int stge_rx_ring; int stge_tx_ring; } ;
struct stge_softc {int sc_dev; TYPE_1__ sc_cdata; TYPE_2__ sc_rdata; } ;
struct stge_rxdesc {scalar_t__ rx_dmamap; int * rx_m; } ;
struct stge_dmamap_arg {scalar_t__ stge_busaddr; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int STGE_DMA_MAXADDR ;
 int STGE_MAXTXSEGS ;
 int STGE_RING_ALIGN ;
 int STGE_RX_RING_CNT ;
 int STGE_RX_RING_SZ ;
 int STGE_TX_RING_CNT ;
 int STGE_TX_RING_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,scalar_t__*) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct stge_dmamap_arg*,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int stge_dmamap_cb ;

__attribute__((used)) static int
stge_dma_alloc(struct stge_softc *sc)
{
 struct stge_dmamap_arg ctx;
 struct stge_txdesc *txd;
 struct stge_rxdesc *rxd;
 int error, i;


 error = bus_dma_tag_create(bus_get_dma_tag(sc->sc_dev),
      1, 0,
      STGE_DMA_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      BUS_SPACE_MAXSIZE_32BIT,
      0,
      ((void*)0), ((void*)0),
      &sc->sc_cdata.stge_parent_tag);
 if (error != 0) {
  device_printf(sc->sc_dev, "failed to create parent DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc->sc_cdata.stge_parent_tag,
      STGE_RING_ALIGN, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      STGE_TX_RING_SZ,
      1,
      STGE_TX_RING_SZ,
      0,
      ((void*)0), ((void*)0),
      &sc->sc_cdata.stge_tx_ring_tag);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "failed to allocate Tx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->sc_cdata.stge_parent_tag,
      STGE_RING_ALIGN, 0,
      BUS_SPACE_MAXADDR_32BIT,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      STGE_RX_RING_SZ,
      1,
      STGE_RX_RING_SZ,
      0,
      ((void*)0), ((void*)0),
      &sc->sc_cdata.stge_rx_ring_tag);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "failed to allocate Rx ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->sc_cdata.stge_parent_tag,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MCLBYTES * STGE_MAXTXSEGS,
      STGE_MAXTXSEGS,
      MCLBYTES,
      0,
      ((void*)0), ((void*)0),
      &sc->sc_cdata.stge_tx_tag);
 if (error != 0) {
  device_printf(sc->sc_dev, "failed to allocate Tx DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->sc_cdata.stge_parent_tag,
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MCLBYTES,
      1,
      MCLBYTES,
      0,
      ((void*)0), ((void*)0),
      &sc->sc_cdata.stge_rx_tag);
 if (error != 0) {
  device_printf(sc->sc_dev, "failed to allocate Rx DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->sc_cdata.stge_tx_ring_tag,
     (void **)&sc->sc_rdata.stge_tx_ring, BUS_DMA_NOWAIT |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->sc_cdata.stge_tx_ring_map);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "failed to allocate DMA'able memory for Tx ring\n");
  goto fail;
 }

 ctx.stge_busaddr = 0;
 error = bus_dmamap_load(sc->sc_cdata.stge_tx_ring_tag,
     sc->sc_cdata.stge_tx_ring_map, sc->sc_rdata.stge_tx_ring,
     STGE_TX_RING_SZ, stge_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.stge_busaddr == 0) {
  device_printf(sc->sc_dev,
      "failed to load DMA'able memory for Tx ring\n");
  goto fail;
 }
 sc->sc_rdata.stge_tx_ring_paddr = ctx.stge_busaddr;


 error = bus_dmamem_alloc(sc->sc_cdata.stge_rx_ring_tag,
     (void **)&sc->sc_rdata.stge_rx_ring, BUS_DMA_NOWAIT |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->sc_cdata.stge_rx_ring_map);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "failed to allocate DMA'able memory for Rx ring\n");
  goto fail;
 }

 ctx.stge_busaddr = 0;
 error = bus_dmamap_load(sc->sc_cdata.stge_rx_ring_tag,
     sc->sc_cdata.stge_rx_ring_map, sc->sc_rdata.stge_rx_ring,
     STGE_RX_RING_SZ, stge_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0 || ctx.stge_busaddr == 0) {
  device_printf(sc->sc_dev,
      "failed to load DMA'able memory for Rx ring\n");
  goto fail;
 }
 sc->sc_rdata.stge_rx_ring_paddr = ctx.stge_busaddr;


 for (i = 0; i < STGE_TX_RING_CNT; i++) {
  txd = &sc->sc_cdata.stge_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = 0;
  error = bus_dmamap_create(sc->sc_cdata.stge_tx_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "failed to create Tx dmamap\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->sc_cdata.stge_rx_tag, 0,
     &sc->sc_cdata.stge_rx_sparemap)) != 0) {
  device_printf(sc->sc_dev, "failed to create spare Rx dmamap\n");
  goto fail;
 }
 for (i = 0; i < STGE_RX_RING_CNT; i++) {
  rxd = &sc->sc_cdata.stge_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = 0;
  error = bus_dmamap_create(sc->sc_cdata.stge_rx_tag, 0,
      &rxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc->sc_dev,
       "failed to create Rx dmamap\n");
   goto fail;
  }
 }

fail:
 return (error);
}

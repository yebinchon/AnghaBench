
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfe_tx_data {int * bfe_map; int * bfe_mbuf; } ;
struct bfe_softc {int bfe_dev; int bfe_rxmbuf_tag; struct bfe_rx_data* bfe_rx_ring; int * bfe_rx_sparemap; int bfe_txmbuf_tag; struct bfe_tx_data* bfe_tx_ring; void* bfe_rx_dma; int bfe_rx_list; int bfe_rx_map; int bfe_rx_tag; void* bfe_tx_dma; int bfe_tx_list; int bfe_tx_map; int bfe_tx_tag; int bfe_parent_tag; } ;
struct bfe_rx_data {int * bfe_map; scalar_t__ bfe_ctrl; int * bfe_mbuf; } ;
struct bfe_dmamap_arg {scalar_t__ bfe_busaddr; } ;


 void* BFE_ADDR_LO (scalar_t__) ;
 int BFE_DMA_MAXADDR ;
 int BFE_MAXTXSEGS ;
 int BFE_RX_LIST_CNT ;
 int BFE_RX_LIST_SIZE ;
 int BFE_RX_RING_ALIGN ;
 int BFE_TX_LIST_CNT ;
 int BFE_TX_LIST_SIZE ;
 int BFE_TX_RING_ALIGN ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int bfe_dma_map ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct bfe_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void*,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bfe_dma_alloc(struct bfe_softc *sc)
{
 struct bfe_dmamap_arg ctx;
 struct bfe_rx_data *rd;
 struct bfe_tx_data *td;
 int error, i;





 error = bus_dma_tag_create(bus_get_dma_tag(sc->bfe_dev),
     1, 0,
     BFE_DMA_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->bfe_parent_tag);
 if (error != 0) {
  device_printf(sc->bfe_dev, "cannot create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->bfe_parent_tag,
     BFE_TX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BFE_TX_LIST_SIZE,
     1,
     BFE_TX_LIST_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->bfe_tx_tag);
 if (error != 0) {
  device_printf(sc->bfe_dev, "cannot create Tx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->bfe_parent_tag,
     BFE_RX_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BFE_RX_LIST_SIZE,
     1,
     BFE_RX_LIST_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->bfe_rx_tag);
 if (error != 0) {
  device_printf(sc->bfe_dev, "cannot create Rx ring DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->bfe_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * BFE_MAXTXSEGS,
     BFE_MAXTXSEGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->bfe_txmbuf_tag);
 if (error != 0) {
  device_printf(sc->bfe_dev,
      "cannot create Tx buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->bfe_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->bfe_rxmbuf_tag);
 if (error != 0) {
  device_printf(sc->bfe_dev,
      "cannot create Rx buffer DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->bfe_tx_tag, (void *)&sc->bfe_tx_list,
   BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT, &sc->bfe_tx_map);
 if (error != 0) {
  device_printf(sc->bfe_dev,
      "cannot allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }
 ctx.bfe_busaddr = 0;
 error = bus_dmamap_load(sc->bfe_tx_tag, sc->bfe_tx_map,
     sc->bfe_tx_list, BFE_TX_LIST_SIZE, bfe_dma_map, &ctx,
     BUS_DMA_NOWAIT);
 if (error != 0 || ctx.bfe_busaddr == 0) {
  device_printf(sc->bfe_dev,
      "cannot load DMA'able memory for Tx ring.\n");
  goto fail;
 }
 sc->bfe_tx_dma = BFE_ADDR_LO(ctx.bfe_busaddr);

 error = bus_dmamem_alloc(sc->bfe_rx_tag, (void *)&sc->bfe_rx_list,
   BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT, &sc->bfe_rx_map);
 if (error != 0) {
  device_printf(sc->bfe_dev,
      "cannot allocate DMA'able memory for Rx ring.\n");
  goto fail;
 }
 ctx.bfe_busaddr = 0;
 error = bus_dmamap_load(sc->bfe_rx_tag, sc->bfe_rx_map,
     sc->bfe_rx_list, BFE_RX_LIST_SIZE, bfe_dma_map, &ctx,
     BUS_DMA_NOWAIT);
 if (error != 0 || ctx.bfe_busaddr == 0) {
  device_printf(sc->bfe_dev,
      "cannot load DMA'able memory for Rx ring.\n");
  goto fail;
 }
 sc->bfe_rx_dma = BFE_ADDR_LO(ctx.bfe_busaddr);


 for (i = 0; i < BFE_TX_LIST_CNT; i++) {
  td = &sc->bfe_tx_ring[i];
  td->bfe_mbuf = ((void*)0);
  td->bfe_map = ((void*)0);
  error = bus_dmamap_create(sc->bfe_txmbuf_tag, 0, &td->bfe_map);
  if (error != 0) {
   device_printf(sc->bfe_dev,
       "cannot create DMA map for Tx.\n");
   goto fail;
  }
 }


 error = bus_dmamap_create(sc->bfe_rxmbuf_tag, 0, &sc->bfe_rx_sparemap);
 if (error != 0) {
  device_printf(sc->bfe_dev, "cannot create spare DMA map for Rx.\n");
  goto fail;
 }

 for (i = 0; i < BFE_RX_LIST_CNT; i++) {
  rd = &sc->bfe_rx_ring[i];
  rd->bfe_mbuf = ((void*)0);
  rd->bfe_map = ((void*)0);
  rd->bfe_ctrl = 0;
  error = bus_dmamap_create(sc->bfe_rxmbuf_tag, 0, &rd->bfe_map);
  if (error != 0) {
   device_printf(sc->bfe_dev,
       "cannot create DMA map for Rx.\n");
   goto fail;
  }
 }

fail:
 return (error);
}

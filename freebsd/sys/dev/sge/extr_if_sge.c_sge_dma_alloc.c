
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_txdesc {int * tx_dmamap; scalar_t__ tx_ndesc; int * tx_m; } ;
struct sge_list_data {int sge_tx_paddr; int sge_tx_ring; int sge_rx_paddr; int sge_rx_ring; } ;
struct sge_chain_data {int sge_rxmbuf_tag; struct sge_rxdesc* sge_rxdesc; int * sge_rx_spare_map; int sge_txmbuf_tag; struct sge_txdesc* sge_txdesc; int sge_tag; int sge_tx_dmamap; int sge_tx_tag; int sge_rx_dmamap; int sge_rx_tag; } ;
struct sge_softc {int sge_dev; struct sge_list_data sge_ldata; struct sge_chain_data sge_cdata; } ;
struct sge_rxdesc {int * rx_dmamap; int * rx_m; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int SGE_DESC_ALIGN ;
 int SGE_MAXTXSEGS ;
 int SGE_RX_BUF_ALIGN ;
 int SGE_RX_RING_CNT ;
 int SGE_RX_RING_SZ ;
 int SGE_TSO_MAXSEGSIZE ;
 int SGE_TSO_MAXSIZE ;
 int SGE_TX_RING_CNT ;
 int SGE_TX_RING_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int sge_dma_map_addr ;

__attribute__((used)) static int
sge_dma_alloc(struct sge_softc *sc)
{
 struct sge_chain_data *cd;
 struct sge_list_data *ld;
 struct sge_rxdesc *rxd;
 struct sge_txdesc *txd;
 int error, i;

 cd = &sc->sge_cdata;
 ld = &sc->sge_ldata;
 error = bus_dma_tag_create(bus_get_dma_tag(sc->sge_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     1,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0),
     ((void*)0),
     &cd->sge_tag);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(cd->sge_tag,
     SGE_DESC_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     SGE_RX_RING_SZ, 1,
     SGE_RX_RING_SZ,
     0,
     ((void*)0),
     ((void*)0),
     &cd->sge_rx_tag);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not create Rx ring DMA tag.\n");
  goto fail;
 }

 error = bus_dmamem_alloc(cd->sge_rx_tag, (void **)&ld->sge_rx_ring,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &cd->sge_rx_dmamap);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not allocate DMA'able memory for Rx ring.\n");
  goto fail;
 }
 error = bus_dmamap_load(cd->sge_rx_tag, cd->sge_rx_dmamap,
     ld->sge_rx_ring, SGE_RX_RING_SZ, sge_dma_map_addr,
     &ld->sge_rx_paddr, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not load DMA'able memory for Rx ring.\n");
 }


 error = bus_dma_tag_create(cd->sge_tag,
     SGE_DESC_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     SGE_TX_RING_SZ, 1,
     SGE_TX_RING_SZ,
     0,
     ((void*)0),
     ((void*)0),
     &cd->sge_tx_tag);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not create Rx ring DMA tag.\n");
  goto fail;
 }

 error = bus_dmamem_alloc(cd->sge_tx_tag, (void **)&ld->sge_tx_ring,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &cd->sge_tx_dmamap);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not allocate DMA'able memory for Tx ring.\n");
  goto fail;
 }
 error = bus_dmamap_load(cd->sge_tx_tag, cd->sge_tx_dmamap,
     ld->sge_tx_ring, SGE_TX_RING_SZ, sge_dma_map_addr,
     &ld->sge_tx_paddr, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not load DMA'able memory for Rx ring.\n");
  goto fail;
 }


 error = bus_dma_tag_create(cd->sge_tag, 1, 0, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), SGE_TSO_MAXSIZE, SGE_MAXTXSEGS,
     SGE_TSO_MAXSEGSIZE, 0, ((void*)0), ((void*)0), &cd->sge_txmbuf_tag);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not create Tx mbuf DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(cd->sge_tag, SGE_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES, 1,
     MCLBYTES, 0, ((void*)0), ((void*)0), &cd->sge_rxmbuf_tag);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not create Rx mbuf DMA tag.\n");
  goto fail;
 }


 for (i = 0; i < SGE_TX_RING_CNT; i++) {
  txd = &cd->sge_txdesc[i];
  txd->tx_m = ((void*)0);
  txd->tx_dmamap = ((void*)0);
  txd->tx_ndesc = 0;
  error = bus_dmamap_create(cd->sge_txmbuf_tag, 0,
      &txd->tx_dmamap);
  if (error != 0) {
   device_printf(sc->sge_dev,
       "could not create Tx DMA map.\n");
   goto fail;
  }
 }

 error = bus_dmamap_create(cd->sge_rxmbuf_tag, 0, &cd->sge_rx_spare_map);
 if (error != 0) {
  device_printf(sc->sge_dev,
      "could not create spare Rx DMA map.\n");
  goto fail;
 }

 for (i = 0; i < SGE_RX_RING_CNT; i++) {
  rxd = &cd->sge_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(cd->sge_rxmbuf_tag, 0,
      &rxd->rx_dmamap);
  if (error) {
   device_printf(sc->sge_dev,
       "could not create Rx DMA map.\n");
   goto fail;
  }
 }
fail:
 return (error);
}

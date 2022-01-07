
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bus_addr_t ;
struct TYPE_3__ {scalar_t__ rxd_base_dma; int * rxd_base; scalar_t__ dma_rxd_busaddr; int dev; int dma_rxd_map; int dma_rxd_tag; scalar_t__ dma_txs_busaddr; scalar_t__ txs_base; int dma_txs_map; int dma_txs_tag; scalar_t__ dma_txd_busaddr; scalar_t__ txd_base; int dma_txd_map; int dma_txd_tag; int dma_parent_tag; } ;
typedef TYPE_1__ ae_softc_t ;
typedef int ae_rxd_t ;


 int AE_RXD_COUNT_DEFAULT ;
 int AE_RXD_PADDING ;
 int AE_TXD_BUFSIZE_DEFAULT ;
 int AE_TXS_COUNT_DEFAULT ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ae_dmamap_cb ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,scalar_t__,int,int ,scalar_t__*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ae_alloc_rings(ae_softc_t *sc)
{
 bus_addr_t busaddr;
 int error;




 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev),
     1, 0, BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE_32BIT, 0,
     BUS_SPACE_MAXSIZE_32BIT, 0, ((void*)0), ((void*)0),
     &sc->dma_parent_tag);
 if (error != 0) {
  device_printf(sc->dev, "could not creare parent DMA tag.\n");
  return (error);
 }




 error = bus_dma_tag_create(sc->dma_parent_tag,
     8, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), AE_TXD_BUFSIZE_DEFAULT, 1,
     AE_TXD_BUFSIZE_DEFAULT, 0, ((void*)0), ((void*)0),
     &sc->dma_txd_tag);
 if (error != 0) {
  device_printf(sc->dev, "could not creare TxD DMA tag.\n");
  return (error);
 }




 error = bus_dma_tag_create(sc->dma_parent_tag,
     8, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), AE_TXS_COUNT_DEFAULT * 4, 1,
     AE_TXS_COUNT_DEFAULT * 4, 0, ((void*)0), ((void*)0),
     &sc->dma_txs_tag);
 if (error != 0) {
  device_printf(sc->dev, "could not creare TxS DMA tag.\n");
  return (error);
 }




 error = bus_dma_tag_create(sc->dma_parent_tag,
     128, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0), AE_RXD_COUNT_DEFAULT * 1536 + AE_RXD_PADDING, 1,
     AE_RXD_COUNT_DEFAULT * 1536 + AE_RXD_PADDING, 0, ((void*)0), ((void*)0),
     &sc->dma_rxd_tag);
 if (error != 0) {
  device_printf(sc->dev, "could not creare TxS DMA tag.\n");
  return (error);
 }




 error = bus_dmamem_alloc(sc->dma_txd_tag, (void **)&sc->txd_base,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->dma_txd_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate DMA memory for TxD ring.\n");
  return (error);
 }
 error = bus_dmamap_load(sc->dma_txd_tag, sc->dma_txd_map, sc->txd_base,
     AE_TXD_BUFSIZE_DEFAULT, ae_dmamap_cb, &busaddr, BUS_DMA_NOWAIT);
 if (error != 0 || busaddr == 0) {
  device_printf(sc->dev,
      "could not load DMA map for TxD ring.\n");
  return (error);
 }
 sc->dma_txd_busaddr = busaddr;




 error = bus_dmamem_alloc(sc->dma_txs_tag, (void **)&sc->txs_base,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->dma_txs_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate DMA memory for TxS ring.\n");
  return (error);
 }
 error = bus_dmamap_load(sc->dma_txs_tag, sc->dma_txs_map, sc->txs_base,
     AE_TXS_COUNT_DEFAULT * 4, ae_dmamap_cb, &busaddr, BUS_DMA_NOWAIT);
 if (error != 0 || busaddr == 0) {
  device_printf(sc->dev,
      "could not load DMA map for TxS ring.\n");
  return (error);
 }
 sc->dma_txs_busaddr = busaddr;




 error = bus_dmamem_alloc(sc->dma_rxd_tag, (void **)&sc->rxd_base_dma,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->dma_rxd_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate DMA memory for RxD ring.\n");
  return (error);
 }
 error = bus_dmamap_load(sc->dma_rxd_tag, sc->dma_rxd_map,
     sc->rxd_base_dma, AE_RXD_COUNT_DEFAULT * 1536 + AE_RXD_PADDING,
     ae_dmamap_cb, &busaddr, BUS_DMA_NOWAIT);
 if (error != 0 || busaddr == 0) {
  device_printf(sc->dev,
      "could not load DMA map for RxD ring.\n");
  return (error);
 }
 sc->dma_rxd_busaddr = busaddr + AE_RXD_PADDING;
 sc->rxd_base = (ae_rxd_t *)(sc->rxd_base_dma + AE_RXD_PADDING);

 return (0);
}

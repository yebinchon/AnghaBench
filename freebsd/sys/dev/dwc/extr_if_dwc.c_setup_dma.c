
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct dwc_softc {int dev; TYPE_2__* rxbuf_map; int rxbuf_tag; scalar_t__ rxdesc_ring_paddr; TYPE_3__* rxdesc_ring; int rxdesc_map; int rxdesc_tag; TYPE_1__* txbuf_map; int txbuf_tag; scalar_t__ txdesc_ring_paddr; TYPE_3__* txdesc_ring; int txdesc_map; int txdesc_tag; } ;
struct dwc_hwdesc {int dummy; } ;
struct TYPE_6__ {scalar_t__ addr_next; } ;
struct TYPE_5__ {int map; } ;
struct TYPE_4__ {int map; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DWC_DESC_RING_ALIGN ;
 int ENOMEM ;
 int ENXIO ;
 int MCLBYTES ;
 int RX_DESC_COUNT ;
 int RX_DESC_SIZE ;
 int TX_DESC_COUNT ;
 int TX_DESC_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int,int *) ;
 int bus_dmamap_load (int ,int ,TYPE_3__*,int ,int ,scalar_t__*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 struct mbuf* dwc_alloc_mbufcl (struct dwc_softc*) ;
 int dwc_get1paddr ;
 int dwc_setup_rxbuf (struct dwc_softc*,int,struct mbuf*) ;
 int dwc_setup_txdesc (struct dwc_softc*,int,int ,int ) ;
 int next_txidx (struct dwc_softc*,int) ;

__attribute__((used)) static int
setup_dma(struct dwc_softc *sc)
{
 struct mbuf *m;
 int error;
 int nidx;
 int idx;




 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     DWC_DESC_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     TX_DESC_SIZE, 1,
     TX_DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->txdesc_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create TX ring DMA tag.\n");
  goto out;
 }

 error = bus_dmamem_alloc(sc->txdesc_tag, (void**)&sc->txdesc_ring,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &sc->txdesc_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate TX descriptor ring.\n");
  goto out;
 }

 error = bus_dmamap_load(sc->txdesc_tag, sc->txdesc_map,
     sc->txdesc_ring, TX_DESC_SIZE, dwc_get1paddr,
     &sc->txdesc_ring_paddr, 0);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load TX descriptor ring map.\n");
  goto out;
 }

 for (idx = 0; idx < TX_DESC_COUNT; idx++) {
  nidx = next_txidx(sc, idx);
  sc->txdesc_ring[idx].addr_next = sc->txdesc_ring_paddr +
      (nidx * sizeof(struct dwc_hwdesc));
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->txbuf_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create TX ring DMA tag.\n");
  goto out;
 }

 for (idx = 0; idx < TX_DESC_COUNT; idx++) {
  error = bus_dmamap_create(sc->txbuf_tag, BUS_DMA_COHERENT,
      &sc->txbuf_map[idx].map);
  if (error != 0) {
   device_printf(sc->dev,
       "could not create TX buffer DMA map.\n");
   goto out;
  }
  dwc_setup_txdesc(sc, idx, 0, 0);
 }




 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     DWC_DESC_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     RX_DESC_SIZE, 1,
     RX_DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->rxdesc_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create RX ring DMA tag.\n");
  goto out;
 }

 error = bus_dmamem_alloc(sc->rxdesc_tag, (void **)&sc->rxdesc_ring,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &sc->rxdesc_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate RX descriptor ring.\n");
  goto out;
 }

 error = bus_dmamap_load(sc->rxdesc_tag, sc->rxdesc_map,
     sc->rxdesc_ring, RX_DESC_SIZE, dwc_get1paddr,
     &sc->rxdesc_ring_paddr, 0);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load RX descriptor ring map.\n");
  goto out;
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->rxbuf_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create RX buf DMA tag.\n");
  goto out;
 }

 for (idx = 0; idx < RX_DESC_COUNT; idx++) {
  error = bus_dmamap_create(sc->rxbuf_tag, BUS_DMA_COHERENT,
      &sc->rxbuf_map[idx].map);
  if (error != 0) {
   device_printf(sc->dev,
       "could not create RX buffer DMA map.\n");
   goto out;
  }
  if ((m = dwc_alloc_mbufcl(sc)) == ((void*)0)) {
   device_printf(sc->dev, "Could not alloc mbuf\n");
   error = ENOMEM;
   goto out;
  }
  if ((error = dwc_setup_rxbuf(sc, idx, m)) != 0) {
   device_printf(sc->dev,
       "could not create new RX buffer.\n");
   goto out;
  }
 }

out:
 if (error != 0)
  return (ENXIO);

 return (0);
}

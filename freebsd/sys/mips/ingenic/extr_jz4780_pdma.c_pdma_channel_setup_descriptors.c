
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdma_softc {int dev; } ;
struct pdma_channel {int desc_ring_paddr; int desc_ring; int desc_map; int desc_tag; } ;
typedef int device_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CHAN_DESC_SIZE ;
 int PDMA_DESC_RING_ALIGN ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 struct pdma_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int dwc_get1paddr ;

__attribute__((used)) static int
pdma_channel_setup_descriptors(device_t dev, struct pdma_channel *chan)
{
 struct pdma_softc *sc;
 int error;

 sc = device_get_softc(dev);




 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     PDMA_DESC_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     CHAN_DESC_SIZE, 1,
     CHAN_DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &chan->desc_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create TX ring DMA tag.\n");
  return (-1);
 }

 error = bus_dmamem_alloc(chan->desc_tag, (void**)&chan->desc_ring,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &chan->desc_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate TX descriptor ring.\n");
  return (-1);
 }

 error = bus_dmamap_load(chan->desc_tag, chan->desc_map,
     chan->desc_ring, CHAN_DESC_SIZE, dwc_get1paddr,
     &chan->desc_ring_paddr, 0);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load TX descriptor ring map.\n");
  return (-1);
 }

 return (0);
}

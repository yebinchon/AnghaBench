
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct idmac_desc {int dummy; } ;
struct dwmmc_softc {int desc_count; int dev; int buf_map; int buf_tag; scalar_t__ desc_ring_paddr; TYPE_1__* desc_ring; int desc_map; int desc_tag; } ;
struct TYPE_2__ {scalar_t__ des3; scalar_t__ des1; int des0; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DES0_CH ;
 int DESC_SIZE ;
 int MMC_SECTOR_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,TYPE_1__*,int,int ,scalar_t__*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int dwmmc_get1paddr ;

__attribute__((used)) static int
dma_setup(struct dwmmc_softc *sc)
{
 int error;
 int nidx;
 int idx;




 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     4096, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     DESC_SIZE, 1,
     DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->desc_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create ring DMA tag.\n");
  return (1);
 }

 error = bus_dmamem_alloc(sc->desc_tag, (void**)&sc->desc_ring,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO,
     &sc->desc_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate descriptor ring.\n");
  return (1);
 }

 error = bus_dmamap_load(sc->desc_tag, sc->desc_map,
     sc->desc_ring, DESC_SIZE, dwmmc_get1paddr,
     &sc->desc_ring_paddr, 0);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load descriptor ring map.\n");
  return (1);
 }

 for (idx = 0; idx < sc->desc_count; idx++) {
  sc->desc_ring[idx].des0 = DES0_CH;
  sc->desc_ring[idx].des1 = 0;
  nidx = (idx + 1) % sc->desc_count;
  sc->desc_ring[idx].des3 = sc->desc_ring_paddr + (nidx * sizeof(struct idmac_desc));

 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->dev),
     4096, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     sc->desc_count * MMC_SECTOR_SIZE,
     sc->desc_count,
     MMC_SECTOR_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->buf_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create ring DMA tag.\n");
  return (1);
 }

 error = bus_dmamap_create(sc->buf_tag, 0,
     &sc->buf_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create TX buffer DMA map.\n");
  return (1);
 }

 return (0);
}

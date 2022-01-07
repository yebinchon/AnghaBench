
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_softc {int dev; int parent_dmat; } ;
struct pvscsi_dma {int size; int paddr; int vaddr; int map; int tag; } ;
typedef int bus_size_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bzero (struct pvscsi_dma*,int) ;
 int device_printf (int ,char*,int) ;
 int pvscsi_dma_cb ;
 int pvscsi_dma_free (struct pvscsi_softc*,struct pvscsi_dma*) ;

__attribute__((used)) static int
pvscsi_dma_alloc(struct pvscsi_softc *sc, struct pvscsi_dma *dma,
    bus_size_t size, bus_size_t alignment)
{
 int error;

 bzero(dma, sizeof(*dma));

 error = bus_dma_tag_create(sc->parent_dmat, alignment, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), size, 1, size,
     BUS_DMA_ALLOCNOW, ((void*)0), ((void*)0), &dma->tag);
 if (error) {
  device_printf(sc->dev, "error creating dma tag, error %d\n",
      error);
  goto fail;
 }

 error = bus_dmamem_alloc(dma->tag, &dma->vaddr,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &dma->map);
 if (error) {
  device_printf(sc->dev, "error allocating dma mem, error %d\n",
      error);
  goto fail;
 }

 error = bus_dmamap_load(dma->tag, dma->map, dma->vaddr, size,
     pvscsi_dma_cb, &dma->paddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(sc->dev, "error mapping dma mam, error %d\n",
      error);
  goto fail;
 }

 dma->size = size;

fail:
 if (error) {
  pvscsi_dma_free(sc, dma);
 }
 return (error);
}

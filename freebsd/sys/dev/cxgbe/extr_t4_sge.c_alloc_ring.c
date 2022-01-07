
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dev; int dmat; } ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,int,size_t,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,void*,size_t,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*,int) ;
 int free_ring (struct adapter*,int ,int ,int ,void*) ;
 int oneseg_dma_callback ;

__attribute__((used)) static int
alloc_ring(struct adapter *sc, size_t len, bus_dma_tag_t *tag,
    bus_dmamap_t *map, bus_addr_t *pa, void **va)
{
 int rc;

 rc = bus_dma_tag_create(sc->dmat, 512, 0, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), len, 1, len, 0, ((void*)0), ((void*)0), tag);
 if (rc != 0) {
  device_printf(sc->dev, "cannot allocate DMA tag: %d\n", rc);
  goto done;
 }

 rc = bus_dmamem_alloc(*tag, va,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO, map);
 if (rc != 0) {
  device_printf(sc->dev, "cannot allocate DMA memory: %d\n", rc);
  goto done;
 }

 rc = bus_dmamap_load(*tag, *map, *va, len, oneseg_dma_callback, pa, 0);
 if (rc != 0) {
  device_printf(sc->dev, "cannot load DMA map: %d\n", rc);
  goto done;
 }
done:
 if (rc)
  free_ring(sc, *tag, *map, *pa, *va);

 return (rc);
}

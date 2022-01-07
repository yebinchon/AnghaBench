
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent_dmat; int dev; } ;
typedef TYPE_1__ mxge_softc_t ;
struct TYPE_6__ {int dmat; int map; int addr; int bus_addr; } ;
typedef TYPE_2__ mxge_dma_t ;
typedef int device_t ;
typedef int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,size_t,int,int,int,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,size_t,int ,void*,int ) ;
 int bus_dmamem_alloc (int ,int *,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int device_printf (int ,char*,int) ;
 int mxge_dmamap_callback ;

__attribute__((used)) static int
mxge_dma_alloc(mxge_softc_t *sc, mxge_dma_t *dma, size_t bytes,
     bus_size_t alignment)
{
 int err;
 device_t dev = sc->dev;
 bus_size_t boundary, maxsegsize;

 if (bytes > 4096 && alignment == 4096) {
  boundary = 0;
  maxsegsize = bytes;
 } else {
  boundary = 4096;
  maxsegsize = 4096;
 }


 err = bus_dma_tag_create(sc->parent_dmat,
     alignment,
     boundary,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     bytes,
     1,
     maxsegsize,
     BUS_DMA_COHERENT,
     ((void*)0), ((void*)0),
     &dma->dmat);
 if (err != 0) {
  device_printf(dev, "couldn't alloc tag (err = %d)\n", err);
  return err;
 }


 err = bus_dmamem_alloc(dma->dmat, &dma->addr,
          (BUS_DMA_WAITOK | BUS_DMA_COHERENT
    | BUS_DMA_ZERO), &dma->map);
 if (err != 0) {
  device_printf(dev, "couldn't alloc mem (err = %d)\n", err);
  goto abort_with_dmat;
 }


 err = bus_dmamap_load(dma->dmat, dma->map, dma->addr, bytes,
         mxge_dmamap_callback,
         (void *)&dma->bus_addr, 0);
 if (err != 0) {
  device_printf(dev, "couldn't load map (err = %d)\n", err);
  goto abort_with_mem;
 }
 return 0;

abort_with_mem:
 bus_dmamem_free(dma->dmat, dma->addr, dma->map);
abort_with_dmat:
 (void)bus_dma_tag_destroy(dma->dmat);
 return err;
}

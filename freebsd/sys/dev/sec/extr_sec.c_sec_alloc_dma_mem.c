
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_dev; } ;
struct sec_dma_mem {int * dma_vaddr; int dma_tag; int dma_map; scalar_t__ dma_is_map; } ;
typedef int bus_size_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EBUSY ;
 int SEC_DMA_ALIGNMENT ;
 int bus_dma_tag_create (int *,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct sec_dma_mem*,int) ;
 int bus_dmamem_alloc (int ,int **,int,int *) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int device_printf (int ,char*,int) ;
 int sec_alloc_dma_mem_cb ;

__attribute__((used)) static int
sec_alloc_dma_mem(struct sec_softc *sc, struct sec_dma_mem *dma_mem,
    bus_size_t size)
{
 int error;

 if (dma_mem->dma_vaddr != ((void*)0))
  return (EBUSY);

 error = bus_dma_tag_create(((void*)0),
  SEC_DMA_ALIGNMENT, 0,
  BUS_SPACE_MAXADDR_32BIT,
  BUS_SPACE_MAXADDR,
  ((void*)0), ((void*)0),
  size, 1,
  size, 0,
  ((void*)0), ((void*)0),
  &(dma_mem->dma_tag));

 if (error) {
  device_printf(sc->sc_dev, "failed to allocate busdma tag, error"
      " %i!\n", error);
  goto err1;
 }

 error = bus_dmamem_alloc(dma_mem->dma_tag, &(dma_mem->dma_vaddr),
     BUS_DMA_NOWAIT | BUS_DMA_ZERO, &(dma_mem->dma_map));

 if (error) {
  device_printf(sc->sc_dev, "failed to allocate DMA safe"
      " memory, error %i!\n", error);
  goto err2;
 }

 error = bus_dmamap_load(dma_mem->dma_tag, dma_mem->dma_map,
      dma_mem->dma_vaddr, size, sec_alloc_dma_mem_cb, dma_mem,
      BUS_DMA_NOWAIT);

 if (error) {
  device_printf(sc->sc_dev, "cannot get address of the DMA"
      " memory, error %i\n", error);
  goto err3;
 }

 dma_mem->dma_is_map = 0;
 return (0);

err3:
 bus_dmamem_free(dma_mem->dma_tag, dma_mem->dma_vaddr, dma_mem->dma_map);
err2:
 bus_dma_tag_destroy(dma_mem->dma_tag);
err1:
 dma_mem->dma_vaddr = ((void*)0);
 return(error);
}

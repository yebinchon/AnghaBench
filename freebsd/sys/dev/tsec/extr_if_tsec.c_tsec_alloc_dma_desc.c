
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int PAGE_SIZE ;
 int bus_dma_tag_create (int *,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,void*,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int device_printf (int ,char*,char const*) ;
 int tsec_map_dma_addr ;

__attribute__((used)) static int
tsec_alloc_dma_desc(device_t dev, bus_dma_tag_t *dtag, bus_dmamap_t *dmap,
    bus_size_t dsize, void **vaddr, void *raddr, const char *dname)
{
 int error;


 error = bus_dma_tag_create(((void*)0),
     PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     dsize, 1,
     dsize, 0,
     ((void*)0), ((void*)0),
     dtag);

 if (error) {
  device_printf(dev, "failed to allocate busdma %s tag\n",
      dname);
  (*vaddr) = ((void*)0);
  return (ENXIO);
 }

 error = bus_dmamem_alloc(*dtag, vaddr, BUS_DMA_NOWAIT | BUS_DMA_ZERO,
     dmap);
 if (error) {
  device_printf(dev, "failed to allocate %s DMA safe memory\n",
      dname);
  bus_dma_tag_destroy(*dtag);
  (*vaddr) = ((void*)0);
  return (ENXIO);
 }

 error = bus_dmamap_load(*dtag, *dmap, *vaddr, dsize,
     tsec_map_dma_addr, raddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(dev, "cannot get address of the %s "
      "descriptors\n", dname);
  bus_dmamem_free(*dtag, *vaddr, *dmap);
  bus_dma_tag_destroy(*dtag);
  (*vaddr) = ((void*)0);
  return (ENXIO);
 }

 return (0);
}

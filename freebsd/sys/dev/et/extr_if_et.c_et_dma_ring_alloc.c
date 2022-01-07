
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct et_softc {int dev; int sc_dtag; } ;
struct et_dmamap_arg {scalar_t__ et_busaddr; } ;
typedef int bus_size_t ;
typedef int bus_dmamap_t ;
typedef int bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct et_dmamap_arg*,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*,char const*) ;
 int et_dma_map_addr ;

__attribute__((used)) static int
et_dma_ring_alloc(struct et_softc *sc, bus_size_t alignment, bus_size_t maxsize,
    bus_dma_tag_t *tag, uint8_t **ring, bus_dmamap_t *map, bus_addr_t *paddr,
    const char *msg)
{
 struct et_dmamap_arg ctx;
 int error;

 error = bus_dma_tag_create(sc->sc_dtag, alignment, 0, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), maxsize, 1, maxsize, 0, ((void*)0), ((void*)0),
     tag);
 if (error != 0) {
  device_printf(sc->dev, "could not create %s dma tag\n", msg);
  return (error);
 }

 error = bus_dmamem_alloc(*tag, (void **)ring,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT, map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate DMA'able memory for %s\n", msg);
  return (error);
 }

 ctx.et_busaddr = 0;
 error = bus_dmamap_load(*tag, *map, *ring, maxsize, et_dma_map_addr,
     &ctx, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load DMA'able memory for %s\n", msg);
  return (error);
 }
 *paddr = ctx.et_busaddr;
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int bge_parent_tag; } ;
struct bge_softc {int bge_flags; int bge_dev; TYPE_1__ bge_cdata; } ;
struct bge_dmamap_arg {scalar_t__ bge_busaddr; } ;
typedef scalar_t__ bus_size_t ;
typedef int * bus_dmamap_t ;
typedef int * bus_dma_tag_t ;
typedef scalar_t__ bus_addr_t ;


 scalar_t__ BGE_ADDR_HI (scalar_t__) ;
 int BGE_FLAG_4G_BNDRY_BUG ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int ENOMEM ;
 int bge_dma_map_addr ;
 scalar_t__ bootverbose ;
 int bus_dma_tag_create (int ,scalar_t__,int ,scalar_t__,scalar_t__,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int **) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_load (int *,int *,int *,scalar_t__,int ,struct bge_dmamap_arg*,int) ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_alloc (int *,void**,int,int **) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int device_printf (int ,char*,char const*) ;

__attribute__((used)) static int
bge_dma_ring_alloc(struct bge_softc *sc, bus_size_t alignment,
    bus_size_t maxsize, bus_dma_tag_t *tag, uint8_t **ring, bus_dmamap_t *map,
    bus_addr_t *paddr, const char *msg)
{
 struct bge_dmamap_arg ctx;
 bus_addr_t lowaddr;
 bus_size_t ring_end;
 int error;

 lowaddr = BUS_SPACE_MAXADDR;
again:
 error = bus_dma_tag_create(sc->bge_cdata.bge_parent_tag,
     alignment, 0, lowaddr, BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), maxsize, 1, maxsize, 0, ((void*)0), ((void*)0), tag);
 if (error != 0) {
  device_printf(sc->bge_dev,
      "could not create %s dma tag\n", msg);
  return (ENOMEM);
 }

 error = bus_dmamem_alloc(*tag, (void **)ring,
     BUS_DMA_NOWAIT | BUS_DMA_ZERO | BUS_DMA_COHERENT, map);
 if (error != 0) {
  device_printf(sc->bge_dev,
      "could not allocate DMA'able memory for %s\n", msg);
  return (ENOMEM);
 }

 ctx.bge_busaddr = 0;
 error = bus_dmamap_load(*tag, *map, *ring, maxsize, bge_dma_map_addr,
     &ctx, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc->bge_dev,
      "could not load DMA'able memory for %s\n", msg);
  return (ENOMEM);
 }
 *paddr = ctx.bge_busaddr;
 ring_end = *paddr + maxsize;
 if ((sc->bge_flags & BGE_FLAG_4G_BNDRY_BUG) != 0 &&
     BGE_ADDR_HI(*paddr) != BGE_ADDR_HI(ring_end)) {




  bus_dmamap_unload(*tag, *map);
  bus_dmamem_free(*tag, *ring, *map);
  bus_dma_tag_destroy(*tag);
  if (bootverbose)
   device_printf(sc->bge_dev, "4GB boundary crossed, "
       "limit DMA address space to 32bit for %s\n", msg);
  *ring = ((void*)0);
  *tag = ((void*)0);
  *map = ((void*)0);
  lowaddr = BUS_SPACE_MAXADDR_32BIT;
  goto again;
 }
 return (0);
}

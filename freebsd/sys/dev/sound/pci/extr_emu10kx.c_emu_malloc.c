
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct emu_mem {int dmat; TYPE_1__* card; } ;
typedef int bus_dmamap_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_2__ {int dbg_level; int dev; } ;


 int BUS_DMA_NOWAIT ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,scalar_t__*,int ) ;
 int bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int device_printf (int ,char*,int) ;
 int emu_setmap ;

__attribute__((used)) static void *
emu_malloc(struct emu_mem *mem, uint32_t sz, bus_addr_t * addr,
    bus_dmamap_t *map)
{
 void *dmabuf;
 int error;

 *addr = 0;
 if ((error = bus_dmamem_alloc(mem->dmat, &dmabuf, BUS_DMA_NOWAIT, map))) {
  if (mem->card->dbg_level > 2)
   device_printf(mem->card->dev, "emu_malloc: failed to alloc DMA map: %d\n", error);
  return (((void*)0));
  }
 if ((error = bus_dmamap_load(mem->dmat, *map, dmabuf, sz, emu_setmap, addr, 0)) || !*addr) {
  if (mem->card->dbg_level > 2)
   device_printf(mem->card->dev, "emu_malloc: failed to load DMA memory: %d\n", error);
  bus_dmamem_free(mem->dmat, dmabuf, *map);
  return (((void*)0));
  }
 return (dmabuf);
}

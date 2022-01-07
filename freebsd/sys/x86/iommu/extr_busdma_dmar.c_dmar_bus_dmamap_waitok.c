
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memdesc {int dummy; } ;
struct bus_dmamap_dmar {void* callback_arg; int * callback; struct bus_dma_tag_dmar* tag; struct memdesc mem; } ;
struct bus_dma_tag_dmar {int dummy; } ;
typedef int * bus_dmamap_t ;
typedef int bus_dmamap_callback_t ;
typedef scalar_t__ bus_dma_tag_t ;



__attribute__((used)) static void
dmar_bus_dmamap_waitok(bus_dma_tag_t dmat, bus_dmamap_t map1,
    struct memdesc *mem, bus_dmamap_callback_t *callback, void *callback_arg)
{
 struct bus_dmamap_dmar *map;

 if (map1 == ((void*)0))
  return;
 map = (struct bus_dmamap_dmar *)map1;
 map->mem = *mem;
 map->tag = (struct bus_dma_tag_dmar *)dmat;
 map->callback = callback;
 map->callback_arg = callback_arg;
}

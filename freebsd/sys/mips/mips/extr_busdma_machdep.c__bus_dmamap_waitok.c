
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct memdesc {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef int bus_dmamap_callback_t ;
typedef int * bus_dma_tag_t ;
struct TYPE_3__ {void* callback_arg; int * callback; struct memdesc mem; } ;


 int KASSERT (int ,char*) ;

void
_bus_dmamap_waitok(bus_dma_tag_t dmat, bus_dmamap_t map,
    struct memdesc *mem, bus_dmamap_callback_t *callback, void *callback_arg)
{

 KASSERT(dmat != ((void*)0), ("dmatag is NULL"));
 KASSERT(map != ((void*)0), ("dmamap is NULL"));
 map->mem = *mem;
 map->callback = callback;
 map->callback_arg = callback_arg;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_4__ {scalar_t__ map_count; int bounce_flags; int * bounce_zone; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int BUS_DMA_MIN_ALLOC_COMP ;
 int KASSERT (int,char*) ;
 int bounce_bus_dma_zone_setup (TYPE_1__*) ;

__attribute__((used)) static int
bounce_bus_dma_tag_set_domain(bus_dma_tag_t dmat)
{

 KASSERT(dmat->map_count == 0,
     ("bounce_bus_dma_tag_set_domain:  Domain set after use.\n"));
 if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) == 0 ||
     dmat->bounce_zone == ((void*)0))
  return (0);
 dmat->bounce_flags &= ~BUS_DMA_MIN_ALLOC_COMP;
 return (bounce_bus_dma_zone_setup(dmat));
}

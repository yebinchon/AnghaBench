
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int bus_size_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_4__ {int bounce_flags; } ;


 int BUS_DMA_COULD_BOUNCE ;
 int _bus_dmamap_pagesneeded (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static bool
bounce_bus_dma_id_mapped(bus_dma_tag_t dmat, vm_paddr_t buf, bus_size_t buflen)
{

 if ((dmat->bounce_flags & BUS_DMA_COULD_BOUNCE) == 0)
  return (1);
 return (!_bus_dmamap_pagesneeded(dmat, buf, buflen, ((void*)0)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
typedef int bus_dma_tag_t ;
struct TYPE_4__ {scalar_t__ pagesneeded; } ;


 int CTR1 (int ,char*,scalar_t__) ;
 int KTR_BUSDMA ;
 int _bus_dmamap_pagesneeded (int ,int ,int ,scalar_t__*) ;
 TYPE_1__ nobounce_dmamap ;

__attribute__((used)) static void
_bus_dmamap_count_phys(bus_dma_tag_t dmat, bus_dmamap_t map, vm_paddr_t buf,
    bus_size_t buflen, int flags)
{

 if (map != &nobounce_dmamap && map->pagesneeded == 0) {
  _bus_dmamap_pagesneeded(dmat, buf, buflen, &map->pagesneeded);
  CTR1(KTR_BUSDMA, "pagesneeded= %d\n", map->pagesneeded);
 }
}

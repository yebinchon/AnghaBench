
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct bus_dmamap_dmar {int flags; } ;
struct TYPE_2__ {int maxsize; } ;
struct bus_dma_tag_dmar {TYPE_1__ common; } ;
typedef scalar_t__ bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;


 int BUS_DMAMAP_DMAR_KMEM_ALLOC ;
 int BUS_DMAMAP_DMAR_MALLOC ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int dmar_bus_dmamap_destroy (scalar_t__,scalar_t__) ;
 int free_domain (void*,int ) ;
 int kmem_free (int ,int ) ;

__attribute__((used)) static void
dmar_bus_dmamem_free(bus_dma_tag_t dmat, void *vaddr, bus_dmamap_t map1)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;

 tag = (struct bus_dma_tag_dmar *)dmat;
 map = (struct bus_dmamap_dmar *)map1;

 if ((map->flags & BUS_DMAMAP_DMAR_MALLOC) != 0) {
  free_domain(vaddr, M_DEVBUF);
  map->flags &= ~BUS_DMAMAP_DMAR_MALLOC;
 } else {
  KASSERT((map->flags & BUS_DMAMAP_DMAR_KMEM_ALLOC) != 0,
      ("dmar_bus_dmamem_free for non alloced map %p", map));
  kmem_free((vm_offset_t)vaddr, tag->common.maxsize);
  map->flags &= ~BUS_DMAMAP_DMAR_KMEM_ALLOC;
 }

 dmar_bus_dmamap_destroy(dmat, map1);
}

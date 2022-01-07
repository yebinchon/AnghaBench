
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_memattr_t ;
struct bus_dmamap_dmar {int flags; } ;
struct TYPE_2__ {scalar_t__ maxsize; scalar_t__ alignment; int domain; } ;
struct bus_dma_tag_dmar {TYPE_1__ common; } ;
typedef int * bus_dmamap_t ;
typedef scalar_t__ bus_dma_tag_t ;


 int BUS_DMAMAP_DMAR_KMEM_ALLOC ;
 int BUS_DMAMAP_DMAR_MALLOC ;
 int BUS_DMA_NOCACHE ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int DOMAINSET_PREF (int ) ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_MEMATTR_DEFAULT ;
 scalar_t__ VM_MEMATTR_UNCACHEABLE ;
 int dmar_bus_dmamap_create (scalar_t__,int,int **) ;
 int dmar_bus_dmamap_destroy (scalar_t__,int *) ;
 scalar_t__ kmem_alloc_attr_domainset (int ,scalar_t__,int,unsigned long,int ,scalar_t__) ;
 void* malloc_domainset (scalar_t__,int ,int ,int) ;

__attribute__((used)) static int
dmar_bus_dmamem_alloc(bus_dma_tag_t dmat, void** vaddr, int flags,
    bus_dmamap_t *mapp)
{
 struct bus_dma_tag_dmar *tag;
 struct bus_dmamap_dmar *map;
 int error, mflags;
 vm_memattr_t attr;

 error = dmar_bus_dmamap_create(dmat, flags, mapp);
 if (error != 0)
  return (error);

 mflags = (flags & BUS_DMA_NOWAIT) != 0 ? M_NOWAIT : M_WAITOK;
 mflags |= (flags & BUS_DMA_ZERO) != 0 ? M_ZERO : 0;
 attr = (flags & BUS_DMA_NOCACHE) != 0 ? VM_MEMATTR_UNCACHEABLE :
     VM_MEMATTR_DEFAULT;

 tag = (struct bus_dma_tag_dmar *)dmat;
 map = (struct bus_dmamap_dmar *)*mapp;

 if (tag->common.maxsize < PAGE_SIZE &&
     tag->common.alignment <= tag->common.maxsize &&
     attr == VM_MEMATTR_DEFAULT) {
  *vaddr = malloc_domainset(tag->common.maxsize, M_DEVBUF,
      DOMAINSET_PREF(tag->common.domain), mflags);
  map->flags |= BUS_DMAMAP_DMAR_MALLOC;
 } else {
  *vaddr = (void *)kmem_alloc_attr_domainset(
      DOMAINSET_PREF(tag->common.domain), tag->common.maxsize,
      mflags, 0ul, BUS_SPACE_MAXADDR, attr);
  map->flags |= BUS_DMAMAP_DMAR_KMEM_ALLOC;
 }
 if (*vaddr == ((void*)0)) {
  dmar_bus_dmamap_destroy(dmat, *mapp);
  *mapp = ((void*)0);
  return (ENOMEM);
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct iommu_state {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
struct TYPE_13__ {int dt_maxsize; struct iommu_state* dt_cookie; } ;
struct TYPE_12__ {int dm_flags; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int DMF_COHERENT ;
 int ENOMEM ;
 int IOMMU_SIZE_ROUNDUP (int ) ;
 int IS_LOCK (struct iommu_state*) ;
 int IS_UNLOCK (struct iommu_state*) ;
 int M_IOMMU ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int iommu_dvma_valloc (TYPE_2__*,struct iommu_state*,TYPE_1__*,int ) ;
 int iommu_map_insq (struct iommu_state*,TYPE_1__*) ;
 void* malloc (int ,int ,int) ;
 int sparc64_dma_alloc_map (TYPE_2__*,TYPE_1__**) ;
 int sparc64_dma_free_map (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int
iommu_dvmamem_alloc(bus_dma_tag_t dt, void **vaddr, int flags,
    bus_dmamap_t *mapp)
{
 struct iommu_state *is = dt->dt_cookie;
 int error, mflags;





 if ((error = sparc64_dma_alloc_map(dt, mapp)) != 0)
  return (error);

 if ((flags & BUS_DMA_NOWAIT) != 0)
  mflags = M_NOWAIT;
 else
  mflags = M_WAITOK;
 if ((flags & BUS_DMA_ZERO) != 0)
  mflags |= M_ZERO;

 if ((*vaddr = malloc(dt->dt_maxsize, M_IOMMU, mflags)) == ((void*)0)) {
  error = ENOMEM;
  sparc64_dma_free_map(dt, *mapp);
  return (error);
 }
 if ((flags & BUS_DMA_COHERENT) != 0)
  (*mapp)->dm_flags |= DMF_COHERENT;




 iommu_dvma_valloc(dt, is, *mapp, IOMMU_SIZE_ROUNDUP(dt->dt_maxsize));
 IS_LOCK(is);
 iommu_map_insq(is, *mapp);
 IS_UNLOCK(is);
 return (0);
}

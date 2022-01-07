
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iommu_state {int dummy; } ;
typedef int bus_dmamap_t ;
typedef TYPE_1__* bus_dma_tag_t ;
struct TYPE_4__ {struct iommu_state* dt_cookie; } ;


 int M_IOMMU ;
 int free (void*,int ) ;
 int iommu_dvma_vfree (struct iommu_state*,int ) ;
 int sparc64_dma_free_map (TYPE_1__*,int ) ;

__attribute__((used)) static void
iommu_dvmamem_free(bus_dma_tag_t dt, void *vaddr, bus_dmamap_t map)
{
 struct iommu_state *is = dt->dt_cookie;

 iommu_dvma_vfree(is, map);
 sparc64_dma_free_map(dt, map);
 free(vaddr, M_IOMMU);
}

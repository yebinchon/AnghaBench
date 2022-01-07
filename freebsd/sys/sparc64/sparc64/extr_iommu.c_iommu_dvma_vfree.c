
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct iommu_state {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
struct TYPE_6__ {int dm_reslist; } ;


 int IS_LOCK (struct iommu_state*) ;
 int IS_UNLOCK (struct iommu_state*) ;
 int SLIST_EMPTY (int *) ;
 int SLIST_FIRST (int *) ;
 int iommu_dvma_vfree_res (TYPE_1__*,int ) ;
 int iommu_dvmamap_vunload (struct iommu_state*,TYPE_1__*) ;
 int iommu_map_remq (struct iommu_state*,TYPE_1__*) ;

__attribute__((used)) static void
iommu_dvma_vfree(struct iommu_state *is, bus_dmamap_t map)
{

 IS_LOCK(is);
 iommu_map_remq(is, map);
 iommu_dvmamap_vunload(is, map);
 IS_UNLOCK(is);
 while (!SLIST_EMPTY(&map->dm_reslist))
  iommu_dvma_vfree_res(map, SLIST_FIRST(&map->dm_reslist));
}

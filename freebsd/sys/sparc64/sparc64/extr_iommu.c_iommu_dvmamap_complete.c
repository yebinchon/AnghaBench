
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iommu_state {int dummy; } ;
typedef TYPE_1__* bus_dmamap_t ;
typedef TYPE_2__* bus_dma_tag_t ;
typedef int bus_dma_segment_t ;
struct TYPE_8__ {int * dt_segments; struct iommu_state* dt_cookie; } ;
struct TYPE_7__ {int dm_flags; } ;


 int DMF_LOADED ;
 int IS_LOCK (struct iommu_state*) ;
 int IS_UNLOCK (struct iommu_state*) ;
 int iommu_dvmamap_vunload (struct iommu_state*,TYPE_1__*) ;
 int iommu_map_insq (struct iommu_state*,TYPE_1__*) ;

__attribute__((used)) static bus_dma_segment_t *
iommu_dvmamap_complete(bus_dma_tag_t dt, bus_dmamap_t map,
    bus_dma_segment_t *segs, int nsegs, int error)
{
 struct iommu_state *is = dt->dt_cookie;

 IS_LOCK(is);
 iommu_map_insq(is, map);
 if (error != 0) {
  iommu_dvmamap_vunload(is, map);
  IS_UNLOCK(is);
 } else {
  IS_UNLOCK(is);
  map->dm_flags |= DMF_LOADED;
 }
 if (segs == ((void*)0))
  segs = dt->dt_segments;
 return (segs);
}

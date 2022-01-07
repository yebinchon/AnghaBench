
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iommu_state {int is_maplruq; } ;
typedef TYPE_1__* bus_dmamap_t ;
struct TYPE_4__ {scalar_t__ dm_onq; } ;


 int IS_LOCK_ASSERT (struct iommu_state*) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int dm_maplruq ;

__attribute__((used)) static __inline void
iommu_map_remq(struct iommu_state *is, bus_dmamap_t map)
{

 IS_LOCK_ASSERT(is);
 if (map->dm_onq)
  TAILQ_REMOVE(&is->is_maplruq, map, dm_maplruq);
 map->dm_onq = 0;
}

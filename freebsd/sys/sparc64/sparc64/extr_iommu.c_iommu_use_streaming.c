
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iommu_state {int dummy; } ;
typedef scalar_t__ bus_size_t ;
typedef TYPE_1__* bus_dmamap_t ;
struct TYPE_3__ {int dm_flags; } ;


 int DMF_COHERENT ;
 scalar_t__ IOMMU_HAS_SB (struct iommu_state*) ;
 scalar_t__ IOMMU_STREAM_THRESH ;

__attribute__((used)) static __inline int
iommu_use_streaming(struct iommu_state *is, bus_dmamap_t map, bus_size_t size)
{

 return (size >= IOMMU_STREAM_THRESH && IOMMU_HAS_SB(is) &&
     (map->dm_flags & DMF_COHERENT) == 0);
}

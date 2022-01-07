
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_state {int dummy; } ;


 int IS_LOCK_ASSERT (struct iommu_state*) ;
 int iommu_strbuf_flush_sync (struct iommu_state*) ;

__attribute__((used)) static __inline void
iommu_strbuf_sync(struct iommu_state *is)
{

 IS_LOCK_ASSERT(is);
 iommu_strbuf_flush_sync(is);
}

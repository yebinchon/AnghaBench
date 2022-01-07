
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_state {int is_flags; } ;
typedef int bus_addr_t ;


 int IMR_FLUSH ;
 int IOMMU_FIRE ;
 int IOMMU_WRITE8 (struct iommu_state*,int ,int ,int ) ;
 int is_iommu ;

__attribute__((used)) static __inline void
iommu_tlb_flush(struct iommu_state *is, bus_addr_t va)
{

 if ((is->is_flags & IOMMU_FIRE) != 0)




  return;
 IOMMU_WRITE8(is, is_iommu, IMR_FLUSH, va);
}

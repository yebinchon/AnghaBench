
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int EFAULT ;
 int TLB1_ENTRIES ;
 scalar_t__ tlb1_iomapped (int,int ,int ,int *) ;

__attribute__((used)) static int
mmu_booke_dev_direct_mapped(mmu_t mmu, vm_paddr_t pa, vm_size_t size)
{
 int i;
 vm_offset_t va;





 for (i = 0; i < TLB1_ENTRIES; i ++) {
  if (tlb1_iomapped(i, pa, size, &va) == 0)
   return (0);
 }

 return (EFAULT);
}

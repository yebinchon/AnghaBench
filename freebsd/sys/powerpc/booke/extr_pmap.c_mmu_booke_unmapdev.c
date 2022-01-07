
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int VM_MAX_KERNEL_ADDRESS ;
 int VM_MIN_KERNEL_ADDRESS ;
 int kva_free (int,scalar_t__) ;
 scalar_t__ roundup (scalar_t__,int ) ;
 int trunc_page (int) ;

__attribute__((used)) static void
mmu_booke_unmapdev(mmu_t mmu, vm_offset_t va, vm_size_t size)
{
}

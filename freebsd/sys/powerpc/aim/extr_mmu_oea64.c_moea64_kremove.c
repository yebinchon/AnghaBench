
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 int kernel_pmap ;
 int moea64_remove (int ,int ,scalar_t__,scalar_t__) ;

void
moea64_kremove(mmu_t mmu, vm_offset_t va)
{
 moea64_remove(mmu, kernel_pmap, va, va + PAGE_SIZE);
}

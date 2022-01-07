
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 int moea64_kremove (int ,int ) ;

void
moea64_qremove(mmu_t mmu, vm_offset_t va, int count)
{
 while (count-- > 0) {
  moea64_kremove(mmu, va);
  va += PAGE_SIZE;
 }
}

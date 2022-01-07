
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int mmu_t ;


 scalar_t__ PAGE_SIZE ;
 int mmu_booke_kremove (int ,int ) ;

__attribute__((used)) static void
mmu_booke_qremove(mmu_t mmu, vm_offset_t sva, int count)
{
 vm_offset_t va;

 va = sva;
 while (count-- > 0) {
  mmu_booke_kremove(mmu, va);
  va += PAGE_SIZE;
 }
}

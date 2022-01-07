
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int mmu_t ;



void
moea64_dumpsys_map(mmu_t mmu, vm_paddr_t pa, size_t sz, void **va)
{

 *va = (void *)(uintptr_t)pa;
}

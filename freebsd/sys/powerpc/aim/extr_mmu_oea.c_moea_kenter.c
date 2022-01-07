
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int VM_MEMATTR_DEFAULT ;
 int moea_kenter_attr (int ,int ,int ,int ) ;

void
moea_kenter(mmu_t mmu, vm_offset_t va, vm_paddr_t pa)
{

 moea_kenter_attr(mmu, va, pa, VM_MEMATTR_DEFAULT);
}

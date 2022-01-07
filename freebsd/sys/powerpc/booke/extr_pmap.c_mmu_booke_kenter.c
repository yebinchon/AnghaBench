
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int mmu_t ;


 int VM_MEMATTR_DEFAULT ;
 int mmu_booke_kenter_attr (int ,int ,int ,int ) ;

__attribute__((used)) static void
mmu_booke_kenter(mmu_t mmu, vm_offset_t va, vm_paddr_t pa)
{

 mmu_booke_kenter_attr(mmu, va, pa, VM_MEMATTR_DEFAULT);
}

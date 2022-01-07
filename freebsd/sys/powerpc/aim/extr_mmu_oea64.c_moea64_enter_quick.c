
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pmap_t ;
typedef int mmu_t ;


 int PMAP_ENTER_NOSLEEP ;
 int PMAP_ENTER_QUICK_LOCKED ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int moea64_enter (int ,int ,int ,int ,int,int,int ) ;

void
moea64_enter_quick(mmu_t mmu, pmap_t pm, vm_offset_t va, vm_page_t m,
    vm_prot_t prot)
{

 moea64_enter(mmu, pm, va, m, prot & (VM_PROT_READ | VM_PROT_EXECUTE),
     PMAP_ENTER_NOSLEEP | PMAP_ENTER_QUICK_LOCKED, 0);
}

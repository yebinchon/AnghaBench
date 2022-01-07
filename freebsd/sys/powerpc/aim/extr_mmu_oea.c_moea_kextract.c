
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_3__ {int pte_lo; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;
typedef int mmu_t ;


 int ADDR_POFF ;
 int KASSERT (int ,char*) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_RPGN ;
 int VM_MIN_KERNEL_ADDRESS ;
 int kernel_pmap ;
 struct pvo_entry* moea_pvo_find_va (int ,int,int *) ;

vm_paddr_t
moea_kextract(mmu_t mmu, vm_offset_t va)
{
 struct pvo_entry *pvo;
 vm_paddr_t pa;




 if (va < VM_MIN_KERNEL_ADDRESS) {
  return (va);
 }

 PMAP_LOCK(kernel_pmap);
 pvo = moea_pvo_find_va(kernel_pmap, va & ~ADDR_POFF, ((void*)0));
 KASSERT(pvo != ((void*)0), ("moea_kextract: no addr found"));
 pa = (pvo->pvo_pte.pte.pte_lo & PTE_RPGN) | (va & ADDR_POFF);
 PMAP_UNLOCK(kernel_pmap);
 return (pa);
}

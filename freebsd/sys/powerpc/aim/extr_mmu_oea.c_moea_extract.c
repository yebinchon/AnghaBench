
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
typedef int pmap_t ;
typedef int mmu_t ;


 int ADDR_POFF ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE_RPGN ;
 struct pvo_entry* moea_pvo_find_va (int ,int,int *) ;

vm_paddr_t
moea_extract(mmu_t mmu, pmap_t pm, vm_offset_t va)
{
 struct pvo_entry *pvo;
 vm_paddr_t pa;

 PMAP_LOCK(pm);
 pvo = moea_pvo_find_va(pm, va & ~ADDR_POFF, ((void*)0));
 if (pvo == ((void*)0))
  pa = 0;
 else
  pa = (pvo->pvo_pte.pte.pte_lo & PTE_RPGN) | (va & ADDR_POFF);
 PMAP_UNLOCK(pm);
 return (pa);
}

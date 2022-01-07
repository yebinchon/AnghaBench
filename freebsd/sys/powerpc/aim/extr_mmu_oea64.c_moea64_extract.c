
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {TYPE_1__ pvo_pte; } ;
typedef int pmap_t ;
typedef int mmu_t ;


 int LPTE_RPGN ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PVO_VADDR (struct pvo_entry*) ;
 struct pvo_entry* moea64_pvo_find_va (int ,int) ;

vm_paddr_t
moea64_extract(mmu_t mmu, pmap_t pm, vm_offset_t va)
{
 struct pvo_entry *pvo;
 vm_paddr_t pa;

 PMAP_LOCK(pm);
 pvo = moea64_pvo_find_va(pm, va);
 if (pvo == ((void*)0))
  pa = 0;
 else
  pa = (pvo->pvo_pte.pa & LPTE_RPGN) | (va - PVO_VADDR(pvo));
 PMAP_UNLOCK(pm);

 return (pa);
}

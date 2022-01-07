
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vm_page_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
typedef int mmu_t ;


 int LPTE_RPGN ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PVO_MANAGED ;
 int PV_LOCK (int) ;
 int PV_UNLOCK (int) ;
 int moea64_pvo_remove_from_page_locked (int ,struct pvo_entry*,int *) ;

__attribute__((used)) static void
moea64_pvo_remove_from_page(mmu_t mmu, struct pvo_entry *pvo)
{
 vm_page_t pg = ((void*)0);

 if (pvo->pvo_vaddr & PVO_MANAGED)
  pg = PHYS_TO_VM_PAGE(pvo->pvo_pte.pa & LPTE_RPGN);

 PV_LOCK(pvo->pvo_pte.pa & LPTE_RPGN);
 moea64_pvo_remove_from_page_locked(mmu, pvo, pg);
 PV_UNLOCK(pvo->pvo_pte.pa & LPTE_RPGN);
}

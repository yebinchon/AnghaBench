
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vm_page_t ;
struct TYPE_2__ {int pa; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; int * pvo_pmap; } ;
typedef int mmu_t ;


 int KASSERT (int,char*) ;
 scalar_t__ LIST_EMPTY (int ) ;
 int LIST_REMOVE (struct pvo_entry*,int ) ;
 int LPTE_RPGN ;
 int PGA_EXECUTABLE ;
 int PGA_WRITEABLE ;
 int PVO_DEAD ;
 int PVO_MANAGED ;
 int PV_LOCKASSERT (int) ;
 int STAT_MOEA64 (int ) ;
 int moea64_pvo_entries ;
 int moea64_pvo_remove_calls ;
 int pvo_vlink ;
 int vm_page_aflag_clear (int *,int) ;
 int vm_page_to_pvoh (int *) ;

__attribute__((used)) static inline void
moea64_pvo_remove_from_page_locked(mmu_t mmu, struct pvo_entry *pvo,
    vm_page_t m)
{

 KASSERT(pvo->pvo_vaddr & PVO_DEAD, ("Trying to delink live page"));


 if (pvo->pvo_pmap == ((void*)0))
  return;
 pvo->pvo_pmap = ((void*)0);




 PV_LOCKASSERT(pvo->pvo_pte.pa & LPTE_RPGN);
 if (pvo->pvo_vaddr & PVO_MANAGED) {
  if (m != ((void*)0)) {
   LIST_REMOVE(pvo, pvo_vlink);
   if (LIST_EMPTY(vm_page_to_pvoh(m)))
    vm_page_aflag_clear(m,
        PGA_WRITEABLE | PGA_EXECUTABLE);
  }
 }

 STAT_MOEA64(moea64_pvo_entries--);
 STAT_MOEA64(moea64_pvo_remove_calls++);
}

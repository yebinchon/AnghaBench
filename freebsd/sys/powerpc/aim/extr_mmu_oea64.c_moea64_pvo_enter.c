
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pvo_head {int dummy; } ;
struct pvo_entry {int pvo_vaddr; TYPE_2__* pvo_pmap; } ;
typedef int mmu_t ;
struct TYPE_4__ {int resident_count; int wired_count; } ;
struct TYPE_5__ {TYPE_1__ pm_stats; int pmap_pvo; } ;


 int EEXIST ;
 int ENOENT ;
 int * LIST_FIRST (struct pvo_head*) ;
 int LIST_INSERT_HEAD (struct pvo_head*,struct pvo_entry*,int ) ;
 int MA_OWNED ;
 int MOEA64_PTE_INSERT (int ,struct pvo_entry*) ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int PVO_LARGE ;
 int PVO_VADDR (struct pvo_entry*) ;
 int PVO_WIRED ;
 struct pvo_entry* RB_INSERT (int ,int *,struct pvo_entry*) ;
 int STAT_MOEA64 (int ) ;
 int isync () ;
 TYPE_2__* kernel_pmap ;
 int moea64_bootstrap_slb_prefault (int ,int) ;
 int moea64_pvo_enter_calls ;
 int moea64_pvo_entries ;
 int panic (char*) ;
 int pmap_bootstrapped ;
 int pvo_tree ;
 int pvo_vlink ;

__attribute__((used)) static int
moea64_pvo_enter(mmu_t mmu, struct pvo_entry *pvo, struct pvo_head *pvo_head,
    struct pvo_entry **oldpvop)
{
 int first, err;
 struct pvo_entry *old_pvo;

 PMAP_LOCK_ASSERT(pvo->pvo_pmap, MA_OWNED);

 STAT_MOEA64(moea64_pvo_enter_calls++);




 old_pvo = RB_INSERT(pvo_tree, &pvo->pvo_pmap->pmap_pvo, pvo);

 if (old_pvo != ((void*)0)) {
  if (oldpvop != ((void*)0))
   *oldpvop = old_pvo;
  return (EEXIST);
 }





 if (pvo_head != ((void*)0)) {
  if (LIST_FIRST(pvo_head) == ((void*)0))
   first = 1;
  LIST_INSERT_HEAD(pvo_head, pvo, pvo_vlink);
 }

 if (pvo->pvo_vaddr & PVO_WIRED)
  pvo->pvo_pmap->pm_stats.wired_count++;
 pvo->pvo_pmap->pm_stats.resident_count++;




 err = MOEA64_PTE_INSERT(mmu, pvo);
 if (err != 0) {
  panic("moea64_pvo_enter: overflow");
 }

 STAT_MOEA64(moea64_pvo_entries++);

 if (pvo->pvo_pmap == kernel_pmap)
  isync();
 return (first ? ENOENT : 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int mdpg_pvoh; } ;
struct vm_page {TYPE_4__ md; } ;
struct TYPE_10__ {int pte_lo; } ;
struct TYPE_8__ {TYPE_5__ pte; } ;
struct pvo_entry {int pvo_vaddr; TYPE_3__ pvo_pte; TYPE_2__* pvo_pmap; } ;
struct pte {int dummy; } ;
struct TYPE_6__ {int wired_count; int resident_count; } ;
struct TYPE_7__ {int pmap_pvo; TYPE_1__ pm_stats; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct pvo_entry*,int ) ;
 int PGA_WRITEABLE ;
 struct vm_page* PHYS_TO_VM_PAGE (int) ;
 int PTE_CHG ;
 int PTE_REF ;
 int PTE_RPGN ;
 int PVO_BOOTSTRAP ;
 int PVO_MANAGED ;
 int PVO_PTEGIDX_CLR (struct pvo_entry*) ;
 int PVO_WIRED ;
 int RB_REMOVE (int ,int *,struct pvo_entry*) ;
 int moea_attr_save (struct vm_page*,int) ;
 int moea_mpvo_zone ;
 int moea_pte_overflow ;
 int moea_pte_unset (struct pte*,TYPE_5__*,int) ;
 int moea_pvo_entries ;
 int moea_pvo_remove_calls ;
 struct pte* moea_pvo_to_pte (struct pvo_entry*,int) ;
 int moea_table_mutex ;
 int moea_upvo_zone ;
 int mtx_unlock (int *) ;
 int pvo_olink ;
 int pvo_tree ;
 int pvo_vlink ;
 int uma_zfree (int ,struct pvo_entry*) ;
 int vm_page_aflag_clear (struct vm_page*,int ) ;

__attribute__((used)) static void
moea_pvo_remove(struct pvo_entry *pvo, int pteidx)
{
 struct pte *pt;





 pt = moea_pvo_to_pte(pvo, pteidx);
 if (pt != ((void*)0)) {
  moea_pte_unset(pt, &pvo->pvo_pte.pte, pvo->pvo_vaddr);
  mtx_unlock(&moea_table_mutex);
  PVO_PTEGIDX_CLR(pvo);
 } else {
  moea_pte_overflow--;
 }




 pvo->pvo_pmap->pm_stats.resident_count--;
 if (pvo->pvo_vaddr & PVO_WIRED)
  pvo->pvo_pmap->pm_stats.wired_count--;




 LIST_REMOVE(pvo, pvo_vlink);
 RB_REMOVE(pvo_tree, &pvo->pvo_pmap->pmap_pvo, pvo);





 if ((pvo->pvo_vaddr & PVO_MANAGED) == PVO_MANAGED) {
  struct vm_page *pg;

  pg = PHYS_TO_VM_PAGE(pvo->pvo_pte.pte.pte_lo & PTE_RPGN);
  if (pg != ((void*)0)) {
   moea_attr_save(pg, pvo->pvo_pte.pte.pte_lo &
       (PTE_REF | PTE_CHG));
   if (LIST_EMPTY(&pg->md.mdpg_pvoh))
    vm_page_aflag_clear(pg, PGA_WRITEABLE);
  }
 }





 LIST_REMOVE(pvo, pvo_olink);
 if (!(pvo->pvo_vaddr & PVO_BOOTSTRAP))
  uma_zfree(pvo->pvo_vaddr & PVO_MANAGED ? moea_mpvo_zone :
      moea_upvo_zone, pvo);
 moea_pvo_entries--;
 moea_pvo_remove_calls++;
}

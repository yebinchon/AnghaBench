
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct pv_chunk {int* pc_map; int * pc_pventry; TYPE_2__* pc_pmap; } ;
typedef int * pv_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int pm_pvchunk; } ;
struct TYPE_9__ {int phys_addr; } ;


 int MA_OWNED ;
 scalar_t__ MIPS_PHYS_TO_DIRECT (int ) ;
 int NBBY ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int PV_STAT (int) ;
 int RA_WLOCKED ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_FREELIST_DIRECT ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int _NPCM ;
 int _NPCPV ;
 int dump_add_page (int ) ;
 int ffsl (int) ;
 int pc_chunk_allocs ;
 int pc_chunk_count ;
 int pc_chunk_tryfail ;
 unsigned long* pc_freemask ;
 int pc_list ;
 int pc_lru ;
 TYPE_1__* pmap_pv_reclaim (TYPE_2__*) ;
 int pv_chunks ;
 int pv_entry_allocs ;
 int pv_entry_count ;
 int pv_entry_spare ;
 int pvh_global_lock ;
 int rw_assert (int *,int ) ;
 TYPE_1__* vm_page_alloc_freelist (int ,int) ;

__attribute__((used)) static pv_entry_t
get_pv_entry(pmap_t pmap, boolean_t try)
{
 struct pv_chunk *pc;
 pv_entry_t pv;
 vm_page_t m;
 int bit, field, idx;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 PV_STAT(pv_entry_allocs++);
 pv_entry_count++;
retry:
 pc = TAILQ_FIRST(&pmap->pm_pvchunk);
 if (pc != ((void*)0)) {
  for (field = 0; field < _NPCM; field++) {
   if (pc->pc_map[field]) {
    bit = ffsl(pc->pc_map[field]) - 1;
    break;
   }
  }
  if (field < _NPCM) {
   idx = field * sizeof(pc->pc_map[field]) * NBBY + bit;
   pv = &pc->pc_pventry[idx];
   pc->pc_map[field] &= ~(1ul << bit);

   for (field = 0; field < _NPCM; field++)
    if (pc->pc_map[field] != 0) {
     PV_STAT(pv_entry_spare--);
     return (pv);
    }
   TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
   TAILQ_INSERT_TAIL(&pmap->pm_pvchunk, pc, pc_list);
   PV_STAT(pv_entry_spare--);
   return (pv);
  }
 }

 m = vm_page_alloc_freelist(VM_FREELIST_DIRECT, VM_ALLOC_NORMAL |
     VM_ALLOC_WIRED);
 if (m == ((void*)0)) {
  if (try) {
   pv_entry_count--;
   PV_STAT(pc_chunk_tryfail++);
   return (((void*)0));
  }
  m = pmap_pv_reclaim(pmap);
  if (m == ((void*)0))
   goto retry;
 }
 PV_STAT(pc_chunk_count++);
 PV_STAT(pc_chunk_allocs++);
 dump_add_page(m->phys_addr);
 pc = (struct pv_chunk *)MIPS_PHYS_TO_DIRECT(VM_PAGE_TO_PHYS(m));
 pc->pc_pmap = pmap;
 pc->pc_map[0] = pc_freemask[0] & ~1ul;
 for (field = 1; field < _NPCM; field++)
  pc->pc_map[field] = pc_freemask[field];
 TAILQ_INSERT_TAIL(&pv_chunks, pc, pc_lru);
 pv = &pc->pc_pventry[0];
 TAILQ_INSERT_HEAD(&pmap->pm_pvchunk, pc, pc_list);
 PV_STAT(pv_entry_spare += _NPCPV - 1);
 return (pv);
}

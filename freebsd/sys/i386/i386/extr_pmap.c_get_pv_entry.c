
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef int vm_offset_t ;
struct timeval {int member_0; int member_1; } ;
struct pv_chunk {int* pc_map; int * pc_pventry; TYPE_1__* pc_pmap; } ;
typedef int * pv_entry_t ;
typedef TYPE_1__* pmap_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int pm_pvchunk; } ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 int PV_STAT (int) ;
 int RA_WLOCKED ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int _NPCM ;
 int _NPCPV ;
 int bsfl (int) ;
 int pc_chunk_allocs ;
 int pc_chunk_count ;
 int pc_chunk_tryfail ;
 unsigned long* pc_freemask ;
 int pc_list ;
 int pc_lru ;
 scalar_t__ pmap_ptelist_alloc (scalar_t__*) ;
 int * pmap_pv_reclaim (TYPE_1__*) ;
 int pmap_qenter (int ,int **,int) ;
 int printf (char*) ;
 int pv_chunks ;
 int pv_entry_allocs ;
 scalar_t__ pv_entry_count ;
 scalar_t__ pv_entry_high_water ;
 int pv_entry_spare ;
 scalar_t__ pv_vafree ;
 int pvh_global_lock ;
 scalar_t__ ratecheck (struct timeval*,struct timeval const*) ;
 int rw_assert (int *,int ) ;
 int * vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static pv_entry_t
get_pv_entry(pmap_t pmap, boolean_t try)
{
 static const struct timeval printinterval = { 60, 0 };
 static struct timeval lastprint;
 int bit, field;
 pv_entry_t pv;
 struct pv_chunk *pc;
 vm_page_t m;

 rw_assert(&pvh_global_lock, RA_WLOCKED);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 PV_STAT(pv_entry_allocs++);
 pv_entry_count++;
 if (pv_entry_count > pv_entry_high_water)
  if (ratecheck(&lastprint, &printinterval))
   printf("Approaching the limit on PV entries, consider "
       "increasing either the vm.pmap.shpgperproc or the "
       "vm.pmap.pv_entries tunable.\n");
retry:
 pc = TAILQ_FIRST(&pmap->pm_pvchunk);
 if (pc != ((void*)0)) {
  for (field = 0; field < _NPCM; field++) {
   if (pc->pc_map[field]) {
    bit = bsfl(pc->pc_map[field]);
    break;
   }
  }
  if (field < _NPCM) {
   pv = &pc->pc_pventry[field * 32 + bit];
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





 if (pv_vafree == 0 || (m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL |
     VM_ALLOC_NOOBJ | VM_ALLOC_WIRED)) == ((void*)0)) {
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
 pc = (struct pv_chunk *)pmap_ptelist_alloc(&pv_vafree);
 pmap_qenter((vm_offset_t)pc, &m, 1);
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

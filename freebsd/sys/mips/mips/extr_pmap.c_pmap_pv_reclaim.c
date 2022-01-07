
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
typedef unsigned long u_long ;
struct pv_chunk {unsigned long* pc_map; int pv_va; struct pv_chunk* pc_pventry; TYPE_4__* pc_pmap; } ;
struct pch {int dummy; } ;
typedef struct pv_chunk* pv_entry_t ;
typedef scalar_t__ pt_entry_t ;
typedef TYPE_4__* pmap_t ;
typedef scalar_t__ pd_entry_t ;
typedef int inuse ;
struct TYPE_20__ {int resident_count; } ;
struct TYPE_22__ {int pm_pvchunk; TYPE_2__ pm_stats; } ;
struct TYPE_19__ {int pv_flags; int pv_list; } ;
struct TYPE_21__ {int phys_addr; TYPE_1__ md; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int MIPS_DIRECT_TO_PHYS (int ) ;
 int NBBY ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 TYPE_3__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (TYPE_4__*) ;
 int PMAP_LOCK_ASSERT (TYPE_4__*,int ) ;
 int PMAP_TRYLOCK (TYPE_4__*) ;
 int PMAP_UNLOCK (TYPE_4__*) ;
 int PTE_D ;
 scalar_t__ PTE_G ;
 int PTE_W ;
 int PV_STAT (int) ;
 int PV_TABLE_REF ;
 int TAILQ_CONCAT (int *,struct pch*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (struct pch*) ;
 int TAILQ_INSERT_HEAD (int *,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (struct pch*,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int TLBLO_PTE_TO_PA (scalar_t__) ;
 int _NPCM ;
 int _NPCPV ;
 int dump_drop_page (int ) ;
 int ffsl (unsigned long) ;
 scalar_t__ is_kernel_pmap (TYPE_4__*) ;
 int pc_chunk_count ;
 int pc_chunk_frees ;
 unsigned long* pc_freemask ;
 int pc_list ;
 int pc_lru ;
 int pmap_invalidate_all (TYPE_4__*) ;
 scalar_t__* pmap_pde (TYPE_4__*,int ) ;
 scalar_t__* pmap_pde_to_pte (scalar_t__*,int ) ;
 int pmap_unuse_pt (TYPE_4__*,int ,scalar_t__) ;
 scalar_t__ pte_test (scalar_t__*,int ) ;
 int pv_chunks ;
 int pv_entry_count ;
 int pv_entry_frees ;
 int pv_entry_spare ;
 int pv_list ;
 int vm_page_aflag_clear (TYPE_3__*,int ) ;
 int vm_page_aflag_set (TYPE_3__*,int ) ;
 int vm_page_dirty (TYPE_3__*) ;

__attribute__((used)) static vm_page_t
pmap_pv_reclaim(pmap_t locked_pmap)
{
 struct pch newtail;
 struct pv_chunk *pc;
 pd_entry_t *pde;
 pmap_t pmap;
 pt_entry_t *pte, oldpte;
 pv_entry_t pv;
 vm_offset_t va;
 vm_page_t m, m_pc;
 u_long inuse;
 int bit, field, freed, idx;

 PMAP_LOCK_ASSERT(locked_pmap, MA_OWNED);
 pmap = ((void*)0);
 m_pc = ((void*)0);
 TAILQ_INIT(&newtail);
 while ((pc = TAILQ_FIRST(&pv_chunks)) != ((void*)0)) {
  TAILQ_REMOVE(&pv_chunks, pc, pc_lru);
  if (pmap != pc->pc_pmap) {
   if (pmap != ((void*)0)) {
    pmap_invalidate_all(pmap);
    if (pmap != locked_pmap)
     PMAP_UNLOCK(pmap);
   }
   pmap = pc->pc_pmap;

   if (pmap > locked_pmap)
    PMAP_LOCK(pmap);
   else if (pmap != locked_pmap && !PMAP_TRYLOCK(pmap)) {
    pmap = ((void*)0);
    TAILQ_INSERT_TAIL(&newtail, pc, pc_lru);
    continue;
   }
  }




  freed = 0;
  for (field = 0; field < _NPCM; field++) {
   for (inuse = ~pc->pc_map[field] & pc_freemask[field];
       inuse != 0; inuse &= ~(1UL << bit)) {
    bit = ffsl(inuse) - 1;
    idx = field * sizeof(inuse) * NBBY + bit;
    pv = &pc->pc_pventry[idx];
    va = pv->pv_va;
    pde = pmap_pde(pmap, va);
    KASSERT(pde != ((void*)0) && *pde != 0,
        ("pmap_pv_reclaim: pde"));
    pte = pmap_pde_to_pte(pde, va);
    oldpte = *pte;
    if (pte_test(&oldpte, PTE_W))
     continue;
    if (is_kernel_pmap(pmap))
     *pte = PTE_G;
    else
     *pte = 0;
    m = PHYS_TO_VM_PAGE(TLBLO_PTE_TO_PA(oldpte));
    if (pte_test(&oldpte, PTE_D))
     vm_page_dirty(m);
    if (m->md.pv_flags & PV_TABLE_REF)
     vm_page_aflag_set(m, PGA_REFERENCED);
    m->md.pv_flags &= ~PV_TABLE_REF;
    TAILQ_REMOVE(&m->md.pv_list, pv, pv_list);
    if (TAILQ_EMPTY(&m->md.pv_list))
     vm_page_aflag_clear(m, PGA_WRITEABLE);
    pc->pc_map[field] |= 1UL << bit;
    pmap_unuse_pt(pmap, va, *pde);
    freed++;
   }
  }
  if (freed == 0) {
   TAILQ_INSERT_TAIL(&newtail, pc, pc_lru);
   continue;
  }

  pmap->pm_stats.resident_count -= freed;
  PV_STAT(pv_entry_frees += freed);
  PV_STAT(pv_entry_spare += freed);
  pv_entry_count -= freed;
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  for (field = 0; field < _NPCM; field++)
   if (pc->pc_map[field] != pc_freemask[field]) {
    TAILQ_INSERT_HEAD(&pmap->pm_pvchunk, pc,
        pc_list);
    TAILQ_INSERT_TAIL(&newtail, pc, pc_lru);





    if (pmap == locked_pmap)
     goto out;
    break;
   }
  if (field == _NPCM) {
   PV_STAT(pv_entry_spare -= _NPCPV);
   PV_STAT(pc_chunk_count--);
   PV_STAT(pc_chunk_frees++);

   m_pc = PHYS_TO_VM_PAGE(MIPS_DIRECT_TO_PHYS(
       (vm_offset_t)pc));
   dump_drop_page(m_pc->phys_addr);
   break;
  }
 }
out:
 TAILQ_CONCAT(&pv_chunks, &newtail, pc_lru);
 if (pmap != ((void*)0)) {
  pmap_invalidate_all(pmap);
  if (pmap != locked_pmap)
   PMAP_UNLOCK(pmap);
 }
 return (m_pc);
}

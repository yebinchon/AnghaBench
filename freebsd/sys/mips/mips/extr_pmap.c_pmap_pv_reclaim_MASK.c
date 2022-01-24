#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  unsigned long u_long ;
struct pv_chunk {unsigned long* pc_map; int /*<<< orphan*/  pv_va; struct pv_chunk* pc_pventry; TYPE_4__* pc_pmap; } ;
struct pch {int dummy; } ;
typedef  struct pv_chunk* pv_entry_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
typedef  scalar_t__ pd_entry_t ;
typedef  int /*<<< orphan*/  inuse ;
struct TYPE_20__ {int resident_count; } ;
struct TYPE_22__ {int /*<<< orphan*/  pm_pvchunk; TYPE_2__ pm_stats; } ;
struct TYPE_19__ {int pv_flags; int /*<<< orphan*/  pv_list; } ;
struct TYPE_21__ {int /*<<< orphan*/  phys_addr; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NBBY ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  PTE_D ; 
 scalar_t__ PTE_G ; 
 int /*<<< orphan*/  PTE_W ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int PV_TABLE_REF ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pch*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 struct pv_chunk* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pch*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pch*,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int _NPCM ; 
 int _NPCPV ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (unsigned long) ; 
 scalar_t__ FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_frees ; 
 unsigned long* pc_freemask ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 scalar_t__* FUNC20 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC21 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pv_chunks ; 
 int pv_entry_count ; 
 int pv_entry_frees ; 
 int pv_entry_spare ; 
 int /*<<< orphan*/  pv_list ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 

__attribute__((used)) static vm_page_t
FUNC27(pmap_t locked_pmap)
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

	FUNC4(locked_pmap, MA_OWNED);
	pmap = NULL;
	m_pc = NULL;
	FUNC11(&newtail);
	while ((pc = FUNC10(&pv_chunks)) != NULL) {
		FUNC14(&pv_chunks, pc, pc_lru);
		if (pmap != pc->pc_pmap) {
			if (pmap != NULL) {
				FUNC19(pmap);
				if (pmap != locked_pmap)
					FUNC6(pmap);
			}
			pmap = pc->pc_pmap;
			/* Avoid deadlock and lock recursion. */
			if (pmap > locked_pmap)
				FUNC3(pmap);
			else if (pmap != locked_pmap && !FUNC5(pmap)) {
				pmap = NULL;
				FUNC13(&newtail, pc, pc_lru);
				continue;
			}
		}

		/*
		 * Destroy every non-wired, 4 KB page mapping in the chunk.
		 */
		freed = 0;
		for (field = 0; field < _NPCM; field++) {
			for (inuse = ~pc->pc_map[field] & pc_freemask[field];
			    inuse != 0; inuse &= ~(1UL << bit)) {
				bit = FUNC17(inuse) - 1;
				idx = field * sizeof(inuse) * NBBY + bit;
				pv = &pc->pc_pventry[idx];
				va = pv->pv_va;
				pde = FUNC20(pmap, va);
				FUNC0(pde != NULL && *pde != 0,
				    ("pmap_pv_reclaim: pde"));
				pte = FUNC21(pde, va);
				oldpte = *pte;
				if (FUNC23(&oldpte, PTE_W))
					continue;
				if (FUNC18(pmap))
					*pte = PTE_G;
				else
					*pte = 0;
				m = FUNC2(FUNC15(oldpte));
				if (FUNC23(&oldpte, PTE_D))
					FUNC26(m);
				if (m->md.pv_flags & PV_TABLE_REF)
					FUNC25(m, PGA_REFERENCED);
				m->md.pv_flags &= ~PV_TABLE_REF;
				FUNC14(&m->md.pv_list, pv, pv_list);
				if (FUNC9(&m->md.pv_list))
					FUNC24(m, PGA_WRITEABLE);
				pc->pc_map[field] |= 1UL << bit;
				FUNC22(pmap, va, *pde);
				freed++;
			}
		}
		if (freed == 0) {
			FUNC13(&newtail, pc, pc_lru);
			continue;
		}
		/* Every freed mapping is for a 4 KB page. */
		pmap->pm_stats.resident_count -= freed;
		FUNC7(pv_entry_frees += freed);
		FUNC7(pv_entry_spare += freed);
		pv_entry_count -= freed;
		FUNC14(&pmap->pm_pvchunk, pc, pc_list);
		for (field = 0; field < _NPCM; field++)
			if (pc->pc_map[field] != pc_freemask[field]) {
				FUNC12(&pmap->pm_pvchunk, pc,
				    pc_list);
				FUNC13(&newtail, pc, pc_lru);

				/*
				 * One freed pv entry in locked_pmap is
				 * sufficient.
				 */
				if (pmap == locked_pmap)
					goto out;
				break;
			}
		if (field == _NPCM) {
			FUNC7(pv_entry_spare -= _NPCPV);
			FUNC7(pc_chunk_count--);
			FUNC7(pc_chunk_frees++);
			/* Entire chunk is free; return it. */
			m_pc = FUNC2(FUNC1(
			    (vm_offset_t)pc));
			FUNC16(m_pc->phys_addr);
			break;
		}
	}
out:
	FUNC8(&pv_chunks, &newtail, pc_lru);
	if (pmap != NULL) {
		FUNC19(pmap);
		if (pmap != locked_pmap)
			FUNC6(pmap);
	}
	return (m_pc);
}
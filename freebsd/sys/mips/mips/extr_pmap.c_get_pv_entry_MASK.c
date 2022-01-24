#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
struct pv_chunk {int* pc_map; int /*<<< orphan*/ * pc_pventry; TYPE_2__* pc_pmap; } ;
typedef  int /*<<< orphan*/ * pv_entry_t ;
typedef  TYPE_2__* pmap_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_10__ {int /*<<< orphan*/  pm_pvchunk; } ;
struct TYPE_9__ {int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NBBY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 struct pv_chunk* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int /*<<< orphan*/  VM_FREELIST_DIRECT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int _NPCM ; 
 int _NPCPV ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  pc_chunk_allocs ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_tryfail ; 
 unsigned long* pc_freemask ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 TYPE_1__* FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  pv_chunks ; 
 int /*<<< orphan*/  pv_entry_allocs ; 
 int /*<<< orphan*/  pv_entry_count ; 
 int pv_entry_spare ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static pv_entry_t
FUNC13(pmap_t pmap, boolean_t try)
{
	struct pv_chunk *pc;
	pv_entry_t pv;
	vm_page_t m;
	int bit, field, idx;

	FUNC11(&pvh_global_lock, RA_WLOCKED);
	FUNC1(pmap, MA_OWNED);
	FUNC2(pv_entry_allocs++);
	pv_entry_count++;
retry:
	pc = FUNC3(&pmap->pm_pvchunk);
	if (pc != NULL) {
		for (field = 0; field < _NPCM; field++) {
			if (pc->pc_map[field]) {
				bit = FUNC9(pc->pc_map[field]) - 1;
				break;
			}
		}
		if (field < _NPCM) {
			idx = field * sizeof(pc->pc_map[field]) * NBBY + bit;
			pv = &pc->pc_pventry[idx];
			pc->pc_map[field] &= ~(1ul << bit);
			/* If this was the last item, move it to tail */
			for (field = 0; field < _NPCM; field++)
				if (pc->pc_map[field] != 0) {
					FUNC2(pv_entry_spare--);
					return (pv);	/* not full, return */
				}
			FUNC6(&pmap->pm_pvchunk, pc, pc_list);
			FUNC5(&pmap->pm_pvchunk, pc, pc_list);
			FUNC2(pv_entry_spare--);
			return (pv);
		}
	}
	/* No free items, allocate another chunk */
	m = FUNC12(VM_FREELIST_DIRECT, VM_ALLOC_NORMAL |
	    VM_ALLOC_WIRED);
	if (m == NULL) {
		if (try) {
			pv_entry_count--;
			FUNC2(pc_chunk_tryfail++);
			return (NULL);
		}
		m = FUNC10(pmap);
		if (m == NULL)
			goto retry;
	}
	FUNC2(pc_chunk_count++);
	FUNC2(pc_chunk_allocs++);
	FUNC8(m->phys_addr);
	pc = (struct pv_chunk *)FUNC0(FUNC7(m));
	pc->pc_pmap = pmap;
	pc->pc_map[0] = pc_freemask[0] & ~1ul;	/* preallocated bit 0 */
	for (field = 1; field < _NPCM; field++)
		pc->pc_map[field] = pc_freemask[field];
	FUNC5(&pv_chunks, pc, pc_lru);
	pv = &pc->pc_pventry[0];
	FUNC4(&pmap->pm_pvchunk, pc, pc_list);
	FUNC2(pv_entry_spare += _NPCPV - 1);
	return (pv);
}
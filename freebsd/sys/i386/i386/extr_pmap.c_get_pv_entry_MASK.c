#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct timeval {int member_0; int /*<<< orphan*/  member_1; } ;
struct pv_chunk {int* pc_map; int /*<<< orphan*/ * pc_pventry; TYPE_1__* pc_pmap; } ;
typedef  int /*<<< orphan*/ * pv_entry_t ;
typedef  TYPE_1__* pmap_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  pm_pvchunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 struct pv_chunk* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct pv_chunk*,int /*<<< orphan*/ ) ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int _NPCM ; 
 int _NPCPV ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  pc_chunk_allocs ; 
 int /*<<< orphan*/  pc_chunk_count ; 
 int /*<<< orphan*/  pc_chunk_tryfail ; 
 unsigned long* pc_freemask ; 
 int /*<<< orphan*/  pc_list ; 
 int /*<<< orphan*/  pc_lru ; 
 scalar_t__ FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  pv_chunks ; 
 int /*<<< orphan*/  pv_entry_allocs ; 
 scalar_t__ pv_entry_count ; 
 scalar_t__ pv_entry_high_water ; 
 int pv_entry_spare ; 
 scalar_t__ pv_vafree ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 scalar_t__ FUNC11 (struct timeval*,struct timeval const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static pv_entry_t
FUNC14(pmap_t pmap, boolean_t try)
{
	static const struct timeval printinterval = { 60, 0 };
	static struct timeval lastprint;
	int bit, field;
	pv_entry_t pv;
	struct pv_chunk *pc;
	vm_page_t m;

	FUNC12(&pvh_global_lock, RA_WLOCKED);
	FUNC0(pmap, MA_OWNED);
	FUNC1(pv_entry_allocs++);
	pv_entry_count++;
	if (pv_entry_count > pv_entry_high_water)
		if (FUNC11(&lastprint, &printinterval))
			FUNC10("Approaching the limit on PV entries, consider "
			    "increasing either the vm.pmap.shpgperproc or the "
			    "vm.pmap.pv_entries tunable.\n");
retry:
	pc = FUNC2(&pmap->pm_pvchunk);
	if (pc != NULL) {
		for (field = 0; field < _NPCM; field++) {
			if (pc->pc_map[field]) {
				bit = FUNC6(pc->pc_map[field]);
				break;
			}
		}
		if (field < _NPCM) {
			pv = &pc->pc_pventry[field * 32 + bit];
			pc->pc_map[field] &= ~(1ul << bit);
			/* If this was the last item, move it to tail */
			for (field = 0; field < _NPCM; field++)
				if (pc->pc_map[field] != 0) {
					FUNC1(pv_entry_spare--);
					return (pv);	/* not full, return */
				}
			FUNC5(&pmap->pm_pvchunk, pc, pc_list);
			FUNC4(&pmap->pm_pvchunk, pc, pc_list);
			FUNC1(pv_entry_spare--);
			return (pv);
		}
	}
	/*
	 * Access to the ptelist "pv_vafree" is synchronized by the pvh
	 * global lock.  If "pv_vafree" is currently non-empty, it will
	 * remain non-empty until pmap_ptelist_alloc() completes.
	 */
	if (pv_vafree == 0 || (m = FUNC13(NULL, 0, VM_ALLOC_NORMAL |
	    VM_ALLOC_NOOBJ | VM_ALLOC_WIRED)) == NULL) {
		if (try) {
			pv_entry_count--;
			FUNC1(pc_chunk_tryfail++);
			return (NULL);
		}
		m = FUNC8(pmap);
		if (m == NULL)
			goto retry;
	}
	FUNC1(pc_chunk_count++);
	FUNC1(pc_chunk_allocs++);
	pc = (struct pv_chunk *)FUNC7(&pv_vafree);
	FUNC9((vm_offset_t)pc, &m, 1);
	pc->pc_pmap = pmap;
	pc->pc_map[0] = pc_freemask[0] & ~1ul;	/* preallocated bit 0 */
	for (field = 1; field < _NPCM; field++)
		pc->pc_map[field] = pc_freemask[field];
	FUNC4(&pv_chunks, pc, pc_lru);
	pv = &pc->pc_pventry[0];
	FUNC3(&pmap->pm_pvchunk, pc, pc_list);
	FUNC1(pv_entry_spare += _NPCPV - 1);
	return (pv);
}
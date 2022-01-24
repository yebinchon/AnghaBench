#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pvo_head {int dummy; } ;
struct pvo_entry {int pvo_vaddr; TYPE_2__* pvo_pmap; } ;
typedef  int /*<<< orphan*/  mmu_t ;
struct TYPE_4__ {int /*<<< orphan*/  resident_count; int /*<<< orphan*/  wired_count; } ;
struct TYPE_5__ {TYPE_1__ pm_stats; int /*<<< orphan*/  pmap_pvo; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC0 (struct pvo_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvo_head*,struct pvo_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC2 (int /*<<< orphan*/ ,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int PVO_LARGE ; 
 int /*<<< orphan*/  FUNC4 (struct pvo_entry*) ; 
 int PVO_WIRED ; 
 struct pvo_entry* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pvo_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  moea64_pvo_enter_calls ; 
 int /*<<< orphan*/  moea64_pvo_entries ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  pmap_bootstrapped ; 
 int /*<<< orphan*/  pvo_tree ; 
 int /*<<< orphan*/  pvo_vlink ; 

__attribute__((used)) static int
FUNC10(mmu_t mmu, struct pvo_entry *pvo, struct pvo_head *pvo_head,
    struct pvo_entry **oldpvop)
{
	int first, err;
	struct pvo_entry *old_pvo;

	FUNC3(pvo->pvo_pmap, MA_OWNED);

	FUNC6(moea64_pvo_enter_calls++);

	/*
	 * Add to pmap list
	 */
	old_pvo = FUNC5(pvo_tree, &pvo->pvo_pmap->pmap_pvo, pvo);

	if (old_pvo != NULL) {
		if (oldpvop != NULL)
			*oldpvop = old_pvo;
		return (EEXIST);
	}

	/*
	 * Remember if the list was empty and therefore will be the first
	 * item.
	 */
	if (pvo_head != NULL) {
		if (FUNC0(pvo_head) == NULL)
			first = 1;
		FUNC1(pvo_head, pvo, pvo_vlink);
	}

	if (pvo->pvo_vaddr & PVO_WIRED)
		pvo->pvo_pmap->pm_stats.wired_count++;
	pvo->pvo_pmap->pm_stats.resident_count++;

	/*
	 * Insert it into the hardware page table
	 */
	err = FUNC2(mmu, pvo);
	if (err != 0) {
		FUNC9("moea64_pvo_enter: overflow");
	}

	FUNC6(moea64_pvo_entries++);

	if (pvo->pvo_pmap == kernel_pmap)
		FUNC7();

#ifdef __powerpc64__
	/*
	 * Make sure all our bootstrap mappings are in the SLB as soon
	 * as virtual memory is switched on.
	 */
	if (!pmap_bootstrapped)
		moea64_bootstrap_slb_prefault(PVO_VADDR(pvo),
		    pvo->pvo_vaddr & PVO_LARGE);
#endif

	return (first ? ENOENT : 0);
}
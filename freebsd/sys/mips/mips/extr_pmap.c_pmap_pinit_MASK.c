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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_5__ {int /*<<< orphan*/  pm_stats; int /*<<< orphan*/  pm_pvchunk; TYPE_1__* pm_asid; int /*<<< orphan*/  pm_active; int /*<<< orphan*/ * pm_segtab; } ;
struct TYPE_4__ {scalar_t__ gen; int /*<<< orphan*/  asid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAXCPU ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUSERPGTBLS ; 
 int /*<<< orphan*/  PMAP_ASID_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int
FUNC7(pmap_t pmap)
{
	vm_offset_t ptdva;
	vm_page_t ptdpg;
	int i, req_class;

	/*
	 * allocate the page directory page
	 */
	req_class = VM_ALLOC_NORMAL;
	while ((ptdpg = FUNC5(NUSERPGTBLS, req_class)) ==
	    NULL)
		FUNC6(req_class);

	ptdva = FUNC1(FUNC3(ptdpg));
	pmap->pm_segtab = (pd_entry_t *)ptdva;
	FUNC0(&pmap->pm_active);
	for (i = 0; i < MAXCPU; i++) {
		pmap->pm_asid[i].asid = PMAP_ASID_RESERVED;
		pmap->pm_asid[i].gen = 0;
	}
	FUNC2(&pmap->pm_pvchunk);
	FUNC4(&pmap->pm_stats, sizeof pmap->pm_stats);

	return (1);
}
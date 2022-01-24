#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_2__ {scalar_t__ td_pinned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ PAGE_SIZE ; 
 int PG_G ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 TYPE_1__* curthread ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,struct spglist*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(pmap_t pmap, vm_offset_t sva, vm_offset_t eva,
    struct spglist *free)
{
	pt_entry_t *pte;
	bool anyvalid;

	FUNC4(&pvh_global_lock, RA_WLOCKED);
	FUNC0(curthread->td_pinned > 0, ("curthread not pinned"));
	FUNC1(pmap, MA_OWNED);
	anyvalid = false;
	for (pte = FUNC2(pmap, sva); sva != eva; pte++,
	    sva += PAGE_SIZE) {
		if (*pte == 0)
			continue;

		/*
		 * The TLB entry for a PG_G mapping is invalidated by
		 * pmap_remove_pte().
		 */
		if ((*pte & PG_G) == 0)
			anyvalid = true;

		if (FUNC3(pmap, pte, sva, free))
			break;
	}
	return (anyvalid);
}
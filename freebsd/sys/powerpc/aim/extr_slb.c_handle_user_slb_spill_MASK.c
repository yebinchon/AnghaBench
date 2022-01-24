#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  uintptr_t uint64_t ;
struct slb {int dummy; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_8__ {int pm_slb_len; struct slb** pm_slb; } ;

/* Variables and functions */
 uintptr_t ADDR_SR_SHFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct slb*) ; 
 struct slb* FUNC4 (TYPE_1__*,scalar_t__) ; 

int 
FUNC5(pmap_t pm, vm_offset_t addr)
{
	struct slb *user_entry;
	uint64_t esid;
	int i;

	if (pm->pm_slb == NULL)
		return (-1);

	esid = (uintptr_t)addr >> ADDR_SR_SHFT;

	FUNC0(pm);
	user_entry = FUNC4(pm, addr);

	if (user_entry == NULL) {
		/* allocate_vsid auto-spills it */
		(void)FUNC2(pm, esid, 0);
	} else {
		/*
		 * Check that another CPU has not already mapped this.
		 * XXX: Per-thread SLB caches would be better.
		 */
		for (i = 0; i < pm->pm_slb_len; i++)
			if (pm->pm_slb[i] == user_entry)
				break;

		if (i == pm->pm_slb_len)
			FUNC3(pm, user_entry);
	}
	FUNC1(pm);

	return (0);
}
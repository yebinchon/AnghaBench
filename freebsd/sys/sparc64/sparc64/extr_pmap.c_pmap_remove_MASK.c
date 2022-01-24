#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_12__ {int /*<<< orphan*/ * pm_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ PMAP_TSB_THRESH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 size_t curcpu ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,struct tte*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *,struct tte*,scalar_t__)) ; 
 struct tte* FUNC10 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  tte_list_global_lock ; 

void
FUNC11(pmap_t pm, vm_offset_t start, vm_offset_t end)
{
	struct tte *tp;
	vm_offset_t va;

	FUNC0(KTR_PMAP, "pmap_remove: ctx=%#lx start=%#lx end=%#lx",
	    pm->pm_context[curcpu], start, end);
	if (FUNC2(pm))
		return;
	FUNC5(&tte_list_global_lock);
	FUNC1(pm);
	if (end - start > PMAP_TSB_THRESH) {
		FUNC9(pm, NULL, start, end, pmap_remove_tte);
		FUNC7(pm);
	} else {
		for (va = start; va < end; va += PAGE_SIZE)
			if ((tp = FUNC10(pm, va)) != NULL &&
			    !FUNC4(pm, NULL, tp, va))
				break;
		FUNC8(pm, start, end - 1);
	}
	FUNC3(pm);
	FUNC6(&tte_list_global_lock);
}
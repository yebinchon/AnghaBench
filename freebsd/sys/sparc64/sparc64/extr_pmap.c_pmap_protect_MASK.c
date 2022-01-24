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
typedef  int vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_12__ {int /*<<< orphan*/ * pm_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  KTR_PMAP ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ PMAP_TSB_THRESH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int VM_PROT_NONE ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 size_t curcpu ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,struct tte*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *,struct tte*,scalar_t__)) ; 
 struct tte* FUNC8 (TYPE_1__*,scalar_t__) ; 

void
FUNC9(pmap_t pm, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
	vm_offset_t va;
	struct tte *tp;

	FUNC0(KTR_PMAP, "pmap_protect: ctx=%#lx sva=%#lx eva=%#lx prot=%#lx",
	    pm->pm_context[curcpu], sva, eva, prot);

	if ((prot & VM_PROT_READ) == VM_PROT_NONE) {
		FUNC4(pm, sva, eva);
		return;
	}

	if (prot & VM_PROT_WRITE)
		return;

	FUNC1(pm);
	if (eva - sva > PMAP_TSB_THRESH) {
		FUNC7(pm, NULL, sva, eva, pmap_protect_tte);
		FUNC5(pm);
	} else {
		for (va = sva; va < eva; va += PAGE_SIZE)
			if ((tp = FUNC8(pm, va)) != NULL)
				FUNC3(pm, NULL, tp, va);
		FUNC6(pm, sva, eva - 1);
	}
	FUNC2(pm);
}
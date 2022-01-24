#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_TSB_THRESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tte*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tte*,scalar_t__)) ; 
 struct tte* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC5(pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
	vm_offset_t va;
	struct tte *tp;

	FUNC0(pm);
	if (eva - sva > PMAP_TSB_THRESH)
		FUNC3(pm, NULL, sva, eva, pmap_unwire_tte);
	else {
		for (va = sva; va < eva; va += PAGE_SIZE)
			if ((tp = FUNC4(pm, va)) != NULL)
				FUNC2(pm, NULL, tp, va);
	}
	FUNC1(pm);
}
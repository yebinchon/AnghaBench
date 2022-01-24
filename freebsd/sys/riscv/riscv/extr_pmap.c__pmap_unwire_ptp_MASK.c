#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_6__ {scalar_t__ pindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ NUL1E ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct spglist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct spglist*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14(pmap_t pmap, vm_offset_t va, vm_page_t m, struct spglist *free)
{
	vm_paddr_t phys;

	FUNC1(pmap, MA_OWNED);
	if (m->pindex >= NUL1E) {
		pd_entry_t *l1;
		l1 = FUNC7(pmap, va);
		FUNC4(l1);
		FUNC5(pmap, FUNC8(va), 0);
	} else {
		pd_entry_t *l2;
		l2 = FUNC9(pmap, va);
		FUNC4(l2);
	}
	FUNC11(pmap, 1);
	if (m->pindex < NUL1E) {
		pd_entry_t *l1;
		vm_page_t pdpg;

		l1 = FUNC7(pmap, va);
		phys = FUNC2(FUNC10(l1));
		pdpg = FUNC0(phys);
		FUNC12(pmap, va, pdpg, free);
	}
	FUNC6(pmap, va);

	FUNC13(1);

	/* 
	 * Put page on a list so that it is released after
	 * *ALL* TLB shootdown is done
	 */
	FUNC3(m, free, TRUE);
}
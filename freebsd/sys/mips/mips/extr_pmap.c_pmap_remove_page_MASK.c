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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct pmap {int dummy; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  scalar_t__ pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct pmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_V ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct pmap*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct pmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct pmap *pmap, vm_offset_t va)
{
	pd_entry_t *pde;
	pt_entry_t *ptq;

	FUNC6(&pvh_global_lock, RA_WLOCKED);
	FUNC0(pmap, MA_OWNED);
	pde = FUNC2(pmap, va);
	if (pde == NULL || *pde == 0)
		return;
	ptq = FUNC3(pde, va);

	/*
	 * If there is no pte for this address, just skip it!
	 */
	if (!FUNC5(ptq, PTE_V))
		return;

	(void)FUNC4(pmap, ptq, va, *pde);
	FUNC1(pmap, va);
}
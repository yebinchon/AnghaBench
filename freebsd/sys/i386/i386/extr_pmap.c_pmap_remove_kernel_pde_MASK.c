#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_4__ {scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/ * KPTmap ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PG_A ; 
 int PG_M ; 
 int PG_RW ; 
 int PG_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ workaround_erratum383 ; 

__attribute__((used)) static void
FUNC11(pmap_t pmap, pd_entry_t *pde, vm_offset_t va)
{
	pd_entry_t newpde;
	vm_paddr_t mptepa;
	vm_page_t mpte;

	FUNC0(pmap, MA_OWNED);
	mpte = FUNC7(pmap, va);
	if (mpte == NULL)
		FUNC4("pmap_remove_kernel_pde: Missing pt page.");

	mptepa = FUNC1(mpte);
	newpde = mptepa | PG_M | PG_A | PG_RW | PG_V;

	/*
	 * If this page table page was unmapped by a promotion, then it
	 * contains valid mappings.  Zero it to invalidate those mappings.
	 */
	if (mpte->valid != 0)
		FUNC3((void *)&KPTmap[FUNC2(FUNC9(va))]);

	/*
	 * Remove the mapping.
	 */
	if (workaround_erratum383)
		FUNC8(pmap, va, pde, newpde);
	else 
		FUNC6(va, newpde);

	/*
	 * Invalidate the recursive mapping of the page table page.
	 */
	FUNC5(pmap, (vm_offset_t)FUNC10(va));
}
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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int NPTEPG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PG_A ; 
 int PG_FRAME ; 
 int PG_M ; 
 int PG_RW ; 
 int PG_V ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  pmap_eh_ptep ; 
 int /*<<< orphan*/  pmap_eh_va ; 

__attribute__((used)) static pt_entry_t
FUNC6(pmap_t pmap, vm_offset_t va, pd_entry_t pde)
{
	pt_entry_t *eh_ptep, pte, *ptep;

	FUNC1(pmap, MA_OWNED);
	pde &= PG_FRAME;
	FUNC2();
	eh_ptep = (pt_entry_t *)FUNC0(pmap_eh_ptep);
	if ((*eh_ptep & PG_FRAME) != pde) {
		*eh_ptep = pde | PG_RW | PG_V | PG_A | PG_M;
		FUNC5((void *)FUNC0(pmap_eh_va));
	}
	ptep = (pt_entry_t *)FUNC0(pmap_eh_va) + (FUNC4(va) &
	    (NPTEPG - 1));
	pte = *ptep;
	FUNC3();
	return (pte);
}
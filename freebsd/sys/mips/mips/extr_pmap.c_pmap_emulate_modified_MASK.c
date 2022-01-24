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
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_D ; 
 int /*<<< orphan*/  PTE_MANAGED ; 
 int /*<<< orphan*/  PTE_RO ; 
 int /*<<< orphan*/  PTE_V ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(pmap_t pmap, vm_offset_t va)
{
	pt_entry_t *pte;

	FUNC0(pmap);
	pte = FUNC3(pmap, va);
	if (pte == NULL)
		FUNC2("pmap_emulate_modified: can't find PTE");
#ifdef SMP
	/* It is possible that some other CPU changed m-bit */
	if (!pte_test(pte, PTE_V) || pte_test(pte, PTE_D)) {
		tlb_update(pmap, va, *pte);
		PMAP_UNLOCK(pmap);
		return (0);
	}
#else
	if (!FUNC5(pte, PTE_V) || FUNC5(pte, PTE_D))
		FUNC2("pmap_emulate_modified: invalid pte");
#endif
	if (FUNC5(pte, PTE_RO)) {
		FUNC1(pmap);
		return (1);
	}
	FUNC4(pte, PTE_D);
	FUNC6(pmap, va, *pte);
	if (!FUNC5(pte, PTE_MANAGED))
		FUNC2("pmap_emulate_modified: unmanaged page");
	FUNC1(pmap);
	return (0);
}
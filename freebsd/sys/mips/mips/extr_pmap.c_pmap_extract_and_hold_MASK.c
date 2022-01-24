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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_RO ; 
 int /*<<< orphan*/  PTE_V ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC7(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
	pt_entry_t pte, *ptep;
	vm_paddr_t pa;
	vm_page_t m;

	m = NULL;
	FUNC1(pmap);
	ptep = FUNC4(pmap, va);
	if (ptep != NULL) {
		pte = *ptep;
		if (FUNC5(&pte, PTE_V) && (!FUNC5(&pte, PTE_RO) ||
		    (prot & VM_PROT_WRITE) == 0)) {
			pa = FUNC3(pte);
			m = FUNC0(pa);
			if (!FUNC6(m))
				m = NULL;
		}
	}
	FUNC2(pmap);
	return (m);
}
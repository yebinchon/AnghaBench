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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PTE_W ; 
 int VM_PROT_WRITE ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC7(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
	pt_entry_t *l3p, l3;
	vm_paddr_t phys;
	vm_page_t m;

	m = NULL;
	FUNC1(pmap);
	l3p = FUNC4(pmap, va);
	if (l3p != NULL && (l3 = FUNC5(l3p)) != 0) {
		if ((l3 & PTE_W) != 0 || (prot & VM_PROT_WRITE) == 0) {
			phys = FUNC3(l3);
			m = FUNC0(phys);
			if (!FUNC6(m))
				m = NULL;
		}
	}
	FUNC2(pmap);
	return (m);
}
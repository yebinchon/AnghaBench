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
typedef  int vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 

vm_paddr_t
FUNC4(pmap_t pmap, vm_offset_t va)
{
	pt_entry_t *pte;
	vm_offset_t retval = 0;

	FUNC0(pmap);
	pte = FUNC3(pmap, va);
	if (pte) {
		retval = FUNC2(*pte) | (va & PAGE_MASK);
	}
	FUNC1(pmap);
	return (retval);
}
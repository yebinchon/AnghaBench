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
typedef  scalar_t__ pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  scalar_t__ pd_entry_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC4(pmap_t pmap, vm_offset_t addr)
{
	pd_entry_t *pde;
	pt_entry_t *pte;
	boolean_t rv;

	rv = FALSE;
	FUNC0(pmap);
	pde = FUNC2(pmap, addr);
	if (pde != NULL && *pde != 0) {
		pte = FUNC3(pde, addr);
		rv = (*pte == 0);
	}
	FUNC1(pmap);
	return (rv);
}
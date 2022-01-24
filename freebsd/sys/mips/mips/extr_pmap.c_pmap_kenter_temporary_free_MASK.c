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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTE_G ; 
 int /*<<< orphan*/  crashdumpva ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(vm_paddr_t pa)
{
 #ifndef __mips_n64    /* XXX : to be converted to new style */
	pt_entry_t *pte;
 #endif
	if (FUNC0(pa)) {
		/* nothing to do for this case */
		return;
	}
#ifndef __mips_n64    /* XXX : to be converted to new style */
	pte = FUNC2(kernel_pmap, crashdumpva);
	*pte = PTE_G;
	FUNC1(kernel_pmap, crashdumpva);
#endif
}
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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ TRUE ; 
 int VM_PROT_ALL ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(void *addr, int len, int rw)
{
	boolean_t rv;
	vm_offset_t saddr, eaddr;
	vm_prot_t prot;

	FUNC0((rw & ~VM_PROT_ALL) == 0,
	    ("illegal ``rw'' argument to kernacc (%x)\n", rw));

	if ((vm_offset_t)addr + len > FUNC5(kernel_map) ||
	    (vm_offset_t)addr + len < (vm_offset_t)addr)
		return (FALSE);

	prot = rw;
	saddr = FUNC2((vm_offset_t)addr);
	eaddr = FUNC1((vm_offset_t)addr + len);
	FUNC4(kernel_map);
	rv = FUNC3(kernel_map, saddr, eaddr, prot);
	FUNC6(kernel_map);
	return (rv == TRUE);
}
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
typedef  scalar_t__ vm_offset_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC4(uint32_t arg1, vm_offset_t *dtbp)
{
	void *ptr;
	int fdt_size;

	if (arg1 % 8 != 0)
		return (-1);

	ptr = (void *)FUNC2(arg1, PAGE_SIZE);
	if (FUNC0(ptr) != 0)
		return (-1);

	/*
	 * Read FDT total size from the header of FDT.
	 * This for sure hits within first page which is
	 * already mapped.
	 */
	fdt_size = FUNC1((void *)ptr);

	/* 
	 * Ok, arg1 points to FDT, so we need to map it in.
	 * First, unmap this page and then map FDT again with full size
	 */
	FUNC3((vm_offset_t)ptr, PAGE_SIZE);
	ptr = (void *)FUNC2(arg1, fdt_size); 
	*dtbp = (vm_offset_t)ptr;

	return (0);
}
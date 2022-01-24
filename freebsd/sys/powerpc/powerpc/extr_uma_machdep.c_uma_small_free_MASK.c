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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  u_int8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ hw_direct_map ; 
 int /*<<< orphan*/  hw_uma_mdpages ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(void *mem, vm_size_t size, u_int8_t flags)
{
	vm_page_t m;

	if (!hw_direct_map)
		FUNC6(kernel_pmap,(vm_offset_t)mem,
		    (vm_offset_t)mem + PAGE_SIZE);

	if (hw_direct_map)
		m = FUNC2(FUNC0((vm_offset_t)mem));
	else
		m = FUNC2((vm_offset_t)mem);
	FUNC1(m != NULL,
	    ("Freeing UMA block at %p with no associated page", mem));
#ifdef __powerpc64__
	dump_drop_page(VM_PAGE_TO_PHYS(m));
#endif
	FUNC8(m);
	FUNC7(m);
	FUNC4(&hw_uma_mdpages, 1);
}
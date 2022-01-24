#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_1__* bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  scalar_t__ bus_size_t ;
struct TYPE_3__ {int /*<<< orphan*/ * bst_cookie; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

int
FUNC6(bus_space_tag_t tag, bus_space_handle_t handle,
    bus_size_t size)
{
	vm_offset_t sva;
	vm_offset_t va;
	vm_offset_t endva;

	if (tag->bst_cookie == NULL ||
	    (sva = (vm_offset_t)FUNC2(tag->bst_cookie)) == 0)
		return (0);
	sva = FUNC5(sva);
	endva = sva + FUNC3(size);
	for (va = sva; va < endva; va += PAGE_SIZE)
		FUNC1(va);
	FUNC4(kernel_pmap, sva, sva + size - 1);
	FUNC0(sva, size);
	return (0);
}
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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ SWAPBLK_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7(vm_object_t srcobject, vm_object_t dstobject,
    vm_pindex_t pindex, daddr_t addr)
{
	daddr_t dstaddr;

	if (FUNC4(dstobject, pindex, 0) != SWAPBLK_NONE) {
		/* Caller should destroy the source block. */
		return (false);
	}

	/*
	 * Destination has no swapblk and is not resident, transfer source.
	 * swp_pager_meta_build() can sleep.
	 */
	FUNC5(srcobject, 1);
	FUNC2(srcobject);
	FUNC5(dstobject, 1);
	dstaddr = FUNC3(dstobject, pindex, addr);
	FUNC0(dstaddr == SWAPBLK_NONE,
	    ("Unexpected destination swapblk"));
	FUNC6(dstobject);
	FUNC1(srcobject);
	FUNC6(srcobject);
	return (true);
}
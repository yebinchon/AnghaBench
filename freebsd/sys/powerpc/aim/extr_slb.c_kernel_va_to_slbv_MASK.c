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
typedef  int uint64_t ;

/* Variables and functions */
 uintptr_t ADDR_SR_SHFT ; 
 scalar_t__ DMAP_BASE_ADDRESS ; 
 scalar_t__ DMAP_MAX_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (uintptr_t) ; 
 int SLBV_L ; 
 int SLBV_VSID_SHIFT ; 
 scalar_t__ hw_direct_map ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint64_t
FUNC3(vm_offset_t va)
{
	uint64_t slbv;

	/* Set kernel VSID to deterministic value */
	slbv = (FUNC1((uintptr_t)va >> ADDR_SR_SHFT)) << SLBV_VSID_SHIFT;

	/* 
	 * Figure out if this is a large-page mapping.
	 */
	if (hw_direct_map && va > DMAP_BASE_ADDRESS && va < DMAP_MAX_ADDRESS) {
		/*
		 * XXX: If we have set up a direct map, assumes
		 * all physical memory is mapped with large pages.
		 */

		if (FUNC2(FUNC0(va), 0) == 0)
			slbv |= SLBV_L;
	}
		
	return (slbv);
}
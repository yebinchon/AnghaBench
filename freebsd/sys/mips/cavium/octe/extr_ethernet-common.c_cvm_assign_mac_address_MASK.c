#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_2__ {scalar_t__ mac_addr_count; int /*<<< orphan*/ * mac_addr_base; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ cvm_oct_mac_addr ; 
 scalar_t__ cvm_oct_mac_addr_offset ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC3(uint64_t *macp, uint8_t *octets)
{
	/* Initialize from global MAC address base; fail if not set */
	if (cvm_oct_mac_addr == 0) {
		FUNC2((uint8_t *)&cvm_oct_mac_addr + 2,
		    FUNC1()->mac_addr_base, 6);

		if (cvm_oct_mac_addr == 0)
			return ENXIO;

		cvm_oct_mac_addr_offset = FUNC0();
		cvm_oct_mac_addr += cvm_oct_mac_addr_offset;
	}

	if (cvm_oct_mac_addr_offset >= FUNC1()->mac_addr_count)
		return ENXIO;	    /* Out of addresses to assign */
	
	if (macp)
		*macp = cvm_oct_mac_addr;
	if (octets)
		FUNC2(octets, (u_int8_t *)&cvm_oct_mac_addr + 2, 6);

	cvm_oct_mac_addr++;
	cvm_oct_mac_addr_offset++;

	return 0;
}
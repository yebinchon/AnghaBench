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
typedef  int uint32_t ;

/* Variables and functions */
 int OFW_PCI_PHYS_HI_SPACEMASK ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static __inline uint32_t
FUNC1(const char *bus, uint32_t phys_hi)
{

	if (FUNC0(bus, "ebus") == 0 || FUNC0(bus, "isa") == 0)
		phys_hi &= 0x1;
	else if (FUNC0(bus, "pci") == 0)
		phys_hi &= OFW_PCI_PHYS_HI_SPACEMASK;
	/* The phys.hi cells of the other busses only contain space bits. */
	return (phys_hi);
}
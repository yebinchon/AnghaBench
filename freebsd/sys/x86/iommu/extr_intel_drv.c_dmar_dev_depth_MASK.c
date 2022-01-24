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
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ devclass_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(device_t child)
{
	devclass_t pci_class;
	device_t bus, pcib;
	int depth;

	pci_class = FUNC0("pci");
	for (depth = 1; ; depth++) {
		bus = FUNC2(child);
		pcib = FUNC2(bus);
		if (FUNC1(FUNC2(pcib)) !=
		    pci_class)
			return (depth);
		child = pcib;
	}
}
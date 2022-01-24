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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 scalar_t__ FUNC4 (char const*,int,char*,int*) ; 
 scalar_t__ FUNC5 (char const*,int,char*,long*) ; 

__attribute__((used)) static void
FUNC6(device_t bus, const char *dname, int dunit)
{
	device_t		child;
	long			maddr;
	int			msize;
	int			irq;
	int			result;
	int			mem_hints_count;

	child = FUNC0(bus, 0, dname, dunit);

	/*
	 * Set hard-wired resources for hinted child using
	 * specific RIDs.
	 */
	mem_hints_count = 0;
	if (FUNC5(dname, dunit, "maddr", &maddr) == 0)
		mem_hints_count++;
	if (FUNC4(dname, dunit, "msize", &msize) == 0)
		mem_hints_count++;

	/* check if all info for mem resource has been provided */
	if ((mem_hints_count > 0) && (mem_hints_count < 2)) {
		FUNC3("Either maddr or msize hint is missing for %s%d\n",
		    dname, dunit);
	} else if (mem_hints_count) {
		result = FUNC1(child, SYS_RES_MEMORY, 0,
		    maddr, msize);
		if (result != 0)
			FUNC2(bus, 
			    "warning: bus_set_resource() failed\n");
	}

	if (FUNC4(dname, dunit, "irq", &irq) == 0) {
		result = FUNC1(child, SYS_RES_IRQ, 0, irq, 1);
		if (result != 0)
			FUNC2(bus,
			    "warning: bus_set_resource() failed\n");
	}
}
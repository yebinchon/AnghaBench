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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t consumer, boolean_t enable)
{
	phandle_t cnode;
	device_t clockdev;
	int clocknum, err, i, ncells;
	uint32_t *clks;
	boolean_t anyerrors;

	cnode = FUNC6(consumer);
	ncells = FUNC3(cnode, "clocks", sizeof(*clks),
	    (void **)&clks);
	if (enable && ncells < 2) {
		FUNC5(consumer, "Warning: No clocks specified in fdt "
		    "data; device may not function.");
		return (ENXIO);
	}
	anyerrors = false;
	for (i = 0; i < ncells; i += 2) {
		clockdev = FUNC2(clks[i]);
		clocknum = clks[i + 1];
		if (clockdev == NULL) {
			if (enable)
				FUNC5(consumer, "Warning: can not find "
				    "driver for clock number %u; device may not "
				    "function\n", clocknum);
			anyerrors = true;
			continue;
		}
		if (enable)
			err = FUNC1(clockdev, clocknum);
		else
			err = FUNC0(clockdev, clocknum);
		if (err != 0) {
			if (enable)
				FUNC5(consumer, "Warning: failed to "
				    "enable clock number %u; device may not "
				    "function\n", clocknum);
			anyerrors = true;
		}
	}
	FUNC4(clks);
	return (anyerrors ? ENXIO : 0);
}
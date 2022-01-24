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
FUNC7(device_t consumer, boolean_t assert)
{
	phandle_t rnode;
	device_t resetdev;
	int resetnum, err, i, ncells;
	uint32_t *resets;
	boolean_t anyerrors;

	rnode = FUNC6(consumer);
	ncells = FUNC3(rnode, "resets", sizeof(*resets),
	    (void **)&resets);
	if (!assert && ncells < 2) {
		FUNC5(consumer, "Warning: No resets specified in fdt "
		    "data; device may not function.");
		return (ENXIO);
	}
	anyerrors = false;
	for (i = 0; i < ncells; i += 2) {
		resetdev = FUNC2(resets[i]);
		resetnum = resets[i + 1];
		if (resetdev == NULL) {
			if (!assert)
				FUNC5(consumer, "Warning: can not find "
				    "driver for reset number %u; device may "
				    "not function\n", resetnum);
			anyerrors = true;
			continue;
		}
		if (assert)
			err = FUNC0(resetdev, resetnum);
		else
			err = FUNC1(resetdev, resetnum);
		if (err != 0) {
			if (!assert)
				FUNC5(consumer, "Warning: failed to "
				    "deassert reset number %u; device may not "
				    "function\n", resetnum);
			anyerrors = true;
		}
	}
	FUNC4(resets);
	return (anyerrors ? ENXIO : 0);
}
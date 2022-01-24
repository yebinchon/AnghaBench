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
struct fdt_clock_info {int index; char* name; int /*<<< orphan*/ * provider; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,int,struct fdt_clock_info*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,void**) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (struct fdt_clock_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(device_t consumer, int n, struct fdt_clock_info *info)
{
	phandle_t cnode;
	device_t clockdev;
	int clocknum, err, ncells;
	uint32_t *clks;

	cnode = FUNC5(consumer);
	ncells = FUNC2(cnode, "clocks", sizeof(*clks),
	    (void **)&clks);
	if (ncells <= 0)
		return (ENXIO);
	n *= 2;
	if (ncells <= n)
		err = ENXIO;
	else {
		clockdev = FUNC1(clks[n]);
		if (clockdev == NULL)
			err = ENXIO;
		else  {
			/*
			 * Make struct contents minimally valid, then call
			 * provider to fill in what it knows (provider can
			 * override anything it wants to).
			 */
			clocknum = clks[n + 1];
			FUNC4(info, sizeof(*info));
			info->provider = clockdev;
			info->index = clocknum;
			info->name = "";
			err = FUNC0(clockdev, clocknum, info);
		}
	}
	FUNC3(clks);
	return (err);
}
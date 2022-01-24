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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC3 (int*,char const**,int*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char*,int*) ; 

int
FUNC5(device_t dev)
{
	const char *name, *dname;
	int i, error, dunit;

	/*
	 * Probe and attach any children.  We should probably detect
	 * devices from the BIOS unless overridden.
	 */
	name = FUNC1(dev);
	i = 0;
	while ((FUNC3(&i, &dname, &dunit, "at", name)) == 0) {
		FUNC4(dname, dunit, "drive", &dunit);
		FUNC2(dev, dname, dunit);
	}

	if ((error = FUNC0(dev)) != 0)
		return (error);
	return (0);
}
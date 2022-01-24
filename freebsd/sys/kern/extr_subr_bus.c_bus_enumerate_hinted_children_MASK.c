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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,char const**,int*,char*,char const*) ; 

void
FUNC4(device_t bus)
{
	int i;
	const char *dname, *busname;
	int dunit;

	/*
	 * enumerate all devices on the specific bus
	 */
	busname = FUNC2(bus);
	i = 0;
	while (FUNC3(&i, &dname, &dunit, "at", busname) == 0)
		FUNC0(bus, dname, dunit);

	/*
	 * and all the generic ones.
	 */
	busname = FUNC1(bus);
	i = 0;
	while (FUNC3(&i, &dname, &dunit, "at", busname) == 0)
		FUNC0(bus, dname, dunit);
}
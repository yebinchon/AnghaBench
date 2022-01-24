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
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char* compat;

	compat = FUNC1(dev);
	if (compat != NULL && FUNC3(FUNC2(dev), "ebus") == 0 &&
	    FUNC3(compat, "jbus-ebus") == 0) {
		FUNC0(dev, "JBus-EBus bridge");
		return (BUS_PROBE_GENERIC);
	}
	return (ENXIO);
}
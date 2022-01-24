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
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char *compat, *name;

	compat = FUNC1(dev);
	name = FUNC2(dev);
	if (FUNC3("SUNW,CS4231", name) == 0 ||
	    (compat != NULL && FUNC3("SUNW,CS4231", compat) == 0)) {
		FUNC0(dev, "Sun Audiocs");
		return (BUS_PROBE_DEFAULT);
	}
	return (ENXIO);
}
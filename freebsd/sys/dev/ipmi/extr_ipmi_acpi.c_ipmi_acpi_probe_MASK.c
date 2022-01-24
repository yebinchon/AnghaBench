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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int EBUSY ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ipmi_attached ; 

int
FUNC4(device_t dev)
{
	static char *ipmi_ids[] = {"IPI0001", NULL};
	int rv;

	if (ipmi_attached)
		return (EBUSY);

	if (FUNC1("ipmi"))
		return (ENXIO);
	rv = FUNC0(FUNC2(dev), dev, ipmi_ids, NULL);
	if (rv <= 0)
		FUNC3(dev, "IPMI System Interface");

	return (rv);
}
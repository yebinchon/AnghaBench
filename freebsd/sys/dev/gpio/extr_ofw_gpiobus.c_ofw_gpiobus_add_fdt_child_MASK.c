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
struct gpiobus_ivar {int npins; int /*<<< orphan*/ * pins; } ;
struct ofw_gpiobus_devinfo {struct gpiobus_ivar opd_dinfo; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ofw_gpiobus_devinfo*) ; 
 struct ofw_gpiobus_devinfo* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

device_t
FUNC8(device_t bus, const char *drvname, phandle_t child)
{
	device_t childdev;
	int i;
	struct gpiobus_ivar *devi;
	struct ofw_gpiobus_devinfo *dinfo;

	/*
	 * Check to see if we already have a child for @p child, and if so
	 * return it.
	 */
	childdev = FUNC5(bus, child);
	if (childdev != NULL)
		return (childdev);

	/*
	 * Set up the GPIO child and OFW bus layer devinfo and add it to bus.
	 */
	childdev = FUNC1(bus, drvname, -1);
	if (childdev == NULL)
		return (NULL);
	dinfo = FUNC7(bus, childdev, child);
	if (dinfo == NULL) {
		FUNC2(bus, childdev);
		return (NULL);
	}
	if (FUNC4(childdev) != 0) {
		FUNC6(bus, dinfo);
		FUNC2(bus, childdev);
		return (NULL);
	}
	/* Use the child name as pin name. */
	devi = &dinfo->opd_dinfo;
	for (i = 0; i < devi->npins; i++)
		FUNC0(bus, devi->pins[i],
		    FUNC3(childdev));

	return (childdev);
}
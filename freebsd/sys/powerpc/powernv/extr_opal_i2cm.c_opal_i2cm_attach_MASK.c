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
struct ofw_bus_devinfo {int /*<<< orphan*/  obd_name; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ofw_bus_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ofw_bus_devinfo*,int /*<<< orphan*/ ) ; 
 struct ofw_bus_devinfo* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ofw_bus_devinfo*) ; 
 scalar_t__ FUNC9 (struct ofw_bus_devinfo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	phandle_t child;
	device_t cdev;
	struct ofw_bus_devinfo *dinfo;

	for (child = FUNC0(FUNC10(dev)); child != 0;
	    child = FUNC1(child)) {
		dinfo = FUNC7(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
		if (FUNC9(dinfo, child) != 0) {
			FUNC6(dinfo, M_DEVBUF);
			continue;
		}
		cdev = FUNC3(dev, NULL, -1);
		if (cdev == NULL) {
			FUNC4(dev, "<%s>: device_add_child failed\n",
			    dinfo->obd_name);
			FUNC8(dinfo);
			FUNC6(dinfo, M_DEVBUF);
			continue;
		}
		FUNC5(cdev, dinfo);
	}

	return (FUNC2(dev));
}
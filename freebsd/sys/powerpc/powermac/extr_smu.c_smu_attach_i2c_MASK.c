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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_SMU ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,char*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ofw_bus_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ofw_bus_devinfo*,int /*<<< orphan*/ ) ; 
 struct ofw_bus_devinfo* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ofw_bus_devinfo*) ; 
 scalar_t__ FUNC9 (struct ofw_bus_devinfo*,scalar_t__) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static void
FUNC11(device_t smu, phandle_t i2croot)
{
	phandle_t child;
	device_t cdev;
	struct ofw_bus_devinfo *dinfo;
	char name[32];

	for (child = FUNC0(i2croot); child != 0; child = FUNC2(child)) {
		if (FUNC1(child, "name", name, sizeof(name)) <= 0)
			continue;

		if (FUNC10(name, "i2c-bus") != 0 && FUNC10(name, "i2c") != 0)
			continue;

		dinfo = FUNC7(sizeof(struct ofw_bus_devinfo), M_SMU,
		    M_WAITOK | M_ZERO);
		if (FUNC9(dinfo, child) != 0) {
			FUNC6(dinfo, M_SMU);
			continue;
		}

		cdev = FUNC3(smu, NULL, -1);
		if (cdev == NULL) {
			FUNC4(smu, "<%s>: device_add_child failed\n",
			    dinfo->obd_name);
			FUNC8(dinfo);
			FUNC6(dinfo, M_SMU);
			continue;
		}
		FUNC5(cdev, dinfo);
	}
}
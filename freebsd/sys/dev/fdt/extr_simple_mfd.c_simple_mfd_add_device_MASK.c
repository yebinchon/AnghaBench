#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_2__ {int /*<<< orphan*/  obd_name; } ;
struct simplebus_devinfo {TYPE_1__ obdinfo; int /*<<< orphan*/  rl; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct simplebus_devinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct simplebus_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct simplebus_devinfo* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct simplebus_devinfo*) ; 

device_t
FUNC7(device_t dev, phandle_t node, u_int order,
    const char *name, int unit, struct simplebus_devinfo *di)
{
	struct simplebus_devinfo *ndi;
	device_t cdev;

	if ((ndi = FUNC6(dev, node, di)) == NULL)
		return (NULL);
	cdev = FUNC0(dev, order, name, unit);
	if (cdev == NULL) {
		FUNC1(dev, "<%s>: device_add_child failed\n",
		    ndi->obdinfo.obd_name);
		FUNC5(&ndi->rl);
		FUNC4(&ndi->obdinfo);
		if (di == NULL)
			FUNC3(ndi, M_DEVBUF);
		return (NULL);
	}
	FUNC2(cdev, ndi);

	return(cdev);
}
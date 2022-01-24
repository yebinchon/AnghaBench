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
struct TYPE_2__ {int /*<<< orphan*/  obd_name; } ;
struct lebuffer_devinfo {TYPE_1__ ldi_obdinfo; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct lebuffer_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct lebuffer_devinfo*) ; 
 struct lebuffer_devinfo* FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct lebuffer_devinfo *ldi;
	device_t cdev;
	phandle_t child;
	int children;

	children = 0;
	for (child = FUNC0(FUNC8(dev)); child != 0;
	    child = FUNC1(child)) {
		if ((ldi = FUNC7(dev, child)) == NULL)
			continue;
		if (children != 0) {
			FUNC4(dev,
			    "<%s>: only one child per buffer supported\n",
			    ldi->ldi_obdinfo.obd_name);
			FUNC6(ldi);
			continue;
		}
		if ((cdev = FUNC3(dev, NULL, -1)) == NULL) {
			FUNC4(dev, "<%s>: device_add_child failed\n",
			    ldi->ldi_obdinfo.obd_name);
			FUNC6(ldi);
			continue;
		}
		FUNC5(cdev, ldi);
		children++;
	}
	return (FUNC2(dev));
}
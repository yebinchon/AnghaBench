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
struct TYPE_2__ {int obd_node; } ;
struct simplebus_devinfo {int /*<<< orphan*/  rl; TYPE_1__ obdinfo; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct simplebus_devinfo*) ; 
 struct simplebus_devinfo* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC4(device_t dev, u_int order, const char *name, int unit)
{
	device_t cdev;
	struct simplebus_devinfo *ndi;

	cdev = FUNC0(dev, order, name, unit);
	if (cdev == NULL)
		return (NULL);

	ndi = FUNC2(sizeof(*ndi), M_DEVBUF, M_WAITOK | M_ZERO);
	ndi->obdinfo.obd_node = -1;
	FUNC3(&ndi->rl);
	FUNC1(cdev, ndi);

	return (cdev);
}
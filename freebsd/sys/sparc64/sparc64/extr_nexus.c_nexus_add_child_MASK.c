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
struct TYPE_2__ {int obd_node; int /*<<< orphan*/  obd_name; } ;
struct nexus_devinfo {int /*<<< orphan*/  ndi_rl; TYPE_1__ ndi_obdinfo; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_OFWPROP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nexus_devinfo*) ; 
 struct nexus_devinfo* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC5(device_t dev, u_int order, const char *name, int unit)
{
	device_t cdev;
	struct nexus_devinfo *ndi;

	cdev = FUNC0(dev, order, name, unit);
	if (cdev == NULL)
		return (NULL);

	ndi = FUNC2(sizeof(*ndi), M_DEVBUF, M_WAITOK | M_ZERO);
	ndi->ndi_obdinfo.obd_node = -1;
	ndi->ndi_obdinfo.obd_name = FUNC4(name, M_OFWPROP);
	FUNC3(&ndi->ndi_rl);
	FUNC1(cdev, ndi);

	return (cdev);
}
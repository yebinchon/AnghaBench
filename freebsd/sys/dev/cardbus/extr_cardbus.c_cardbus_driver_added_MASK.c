#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int domain; int bus; int slot; int func; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct cardbus_devinfo {TYPE_2__ pci; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ DS_NOTPRESENT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct cardbus_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC12(device_t cbdev, driver_t *driver)
{
	int numdevs;
	device_t *devlist;
	device_t dev;
	int i;
	struct cardbus_devinfo *dinfo;

	FUNC0(driver, cbdev);
	if (FUNC2(cbdev, &devlist, &numdevs) != 0)
		return;

	/*
	 * If there are no drivers attached, but there are children,
	 * then power the card up.
	 */
	for (i = 0; i < numdevs; i++) {
		dev = devlist[i];
		if (FUNC5(dev) != DS_NOTPRESENT)
		    break;
	}
	if (i > 0 && i == numdevs)
		FUNC1(FUNC4(cbdev), cbdev);
	for (i = 0; i < numdevs; i++) {
		dev = devlist[i];
		if (FUNC5(dev) != DS_NOTPRESENT)
			continue;
		dinfo = FUNC3(dev);
		FUNC10(&dinfo->pci);
		if (bootverbose)
			FUNC11("pci%d:%d:%d:%d: reprobing on driver added\n",
			    dinfo->pci.cfg.domain, dinfo->pci.cfg.bus,
			    dinfo->pci.cfg.slot, dinfo->pci.cfg.func);
		FUNC8(dinfo->pci.cfg.dev, &dinfo->pci);
		if (FUNC6(dev) != 0)
			FUNC9(dev, &dinfo->pci, 1);
	}
	FUNC7(devlist, M_TEMP);
}
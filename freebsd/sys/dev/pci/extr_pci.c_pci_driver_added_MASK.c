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
struct pci_devinfo {int /*<<< orphan*/  cfg; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ DS_NOTPRESENT ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_devinfo*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

void
FUNC11(device_t dev, driver_t *driver)
{
	int numdevs;
	device_t *devlist;
	device_t child;
	struct pci_devinfo *dinfo;
	int i;

	if (bootverbose)
		FUNC4(dev, "driver added\n");
	FUNC0(driver, dev);
	if (FUNC1(dev, &devlist, &numdevs) != 0)
		return;
	for (i = 0; i < numdevs; i++) {
		child = devlist[i];
		if (FUNC3(child) != DS_NOTPRESENT)
			continue;
		dinfo = FUNC2(child);
		FUNC9(dinfo);
		if (bootverbose)
			FUNC10(&dinfo->cfg, "reprobing on driver added\n");
		FUNC7(child, dinfo);
		if (FUNC5(child) != 0)
			FUNC8(dev, child);
	}
	FUNC6(devlist, M_TEMP);
}
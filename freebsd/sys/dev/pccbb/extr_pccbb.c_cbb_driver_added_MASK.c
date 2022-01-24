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
struct cbb_softc {int /*<<< orphan*/  intrhand; } ;
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ DS_NOTPRESENT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct cbb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(device_t brdev, driver_t *driver)
{
	struct cbb_softc *sc = FUNC2(brdev);
	device_t *devlist;
	device_t dev;
	int tmp;
	int numdevs;
	int wake = 0;

	FUNC0(driver, brdev);
	tmp = FUNC1(brdev, &devlist, &numdevs);
	if (tmp != 0) {
		FUNC4(brdev, "Cannot get children list, no reprobe\n");
		return;
	}
	for (tmp = 0; tmp < numdevs; tmp++) {
		dev = devlist[tmp];
		if (FUNC3(dev) == DS_NOTPRESENT &&
		    FUNC5(dev) == 0)
			wake++;
	}
	FUNC6(devlist, M_TEMP);

	if (wake > 0)
		FUNC7(&sc->intrhand);
}
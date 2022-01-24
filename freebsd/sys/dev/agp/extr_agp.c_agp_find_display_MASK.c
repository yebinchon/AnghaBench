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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ PCIC_DISPLAY ; 
 scalar_t__ PCIS_DISPLAY_VGA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC8(void)
{
	devclass_t pci = FUNC1("pci");
	device_t bus, dev = 0;
	device_t *kids;
	int busnum, numkids, i;

	for (busnum = 0; busnum < FUNC3(pci); busnum++) {
		bus = FUNC2(pci, busnum);
		if (!bus)
			continue;
		if (FUNC4(bus, &kids, &numkids) != 0)
			continue;
		for (i = 0; i < numkids; i++) {
			dev = kids[i];
			if (FUNC6(dev) == PCIC_DISPLAY
			    && FUNC7(dev) == PCIS_DISPLAY_VGA)
				if (FUNC0(dev)) {
					FUNC5(kids, M_TEMP);
					return dev;
				}
					
		}
		FUNC5(kids, M_TEMP);
	}

	return 0;
}
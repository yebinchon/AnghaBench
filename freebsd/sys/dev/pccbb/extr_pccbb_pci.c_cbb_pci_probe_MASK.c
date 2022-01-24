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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int BUS_PROBE_GENERIC ; 
 scalar_t__ CB_UNKNOWN ; 
 int ENXIO ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_CARDBUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t brdev)
{
	const char *name;
	uint32_t progif;
	uint32_t baseclass;
	uint32_t subclass;

	/*
	 * Do we know that we support the chipset?  If so, then we
	 * accept the device.
	 */
	if (FUNC0(FUNC3(brdev), &name) != CB_UNKNOWN) {
		FUNC1(brdev, name);
		return (BUS_PROBE_DEFAULT);
	}

	/*
	 * We do support generic CardBus bridges.  All that we've seen
	 * to date have progif 0 (the Yenta spec, and successors mandate
	 * this).
	 */
	baseclass = FUNC2(brdev);
	subclass = FUNC5(brdev);
	progif = FUNC4(brdev);
	if (baseclass == PCIC_BRIDGE &&
	    subclass == PCIS_BRIDGE_CARDBUS && progif == 0) {
		FUNC1(brdev, "PCI-CardBus Bridge");
		return (BUS_PROBE_GENERIC);
	}
	return (ENXIO);
}
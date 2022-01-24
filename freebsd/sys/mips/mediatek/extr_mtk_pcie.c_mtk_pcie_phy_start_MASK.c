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
struct mtk_pci_softc {scalar_t__ socid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ MTK_SOC_MT7621 ; 
 int SYSCTL_MT7621_REV_E ; 
 int /*<<< orphan*/  SYSCTL_REVID ; 
 int SYSCTL_REVID_MASK ; 
 struct mtk_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC0(dev);

	if (sc->socid == MTK_SOC_MT7621 &&
	    (FUNC4(SYSCTL_REVID) & SYSCTL_REVID_MASK) !=
	    SYSCTL_MT7621_REV_E) {
		if (FUNC2(dev))
			return (ENXIO);
	} else {
		if (FUNC3(dev))
			return (ENXIO);
	}

	if (FUNC1(dev))
		return (ENXIO);

	return (0);
}
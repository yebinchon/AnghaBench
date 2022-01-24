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
struct mtk_pci_softc {scalar_t__ socid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ MTK_SOC_UNKNOWN ; 
 int /*<<< orphan*/  compat_data ; 
 struct mtk_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct mtk_pci_softc *sc = FUNC0(dev);

	if (!FUNC3(dev))
		return (ENXIO);

	sc->socid = FUNC2(dev, compat_data)->ocd_data;
	if (sc->socid == MTK_SOC_UNKNOWN)
		return (ENXIO);

	FUNC1(dev, "MTK PCIe Controller");

	return (0);
}
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
struct mtk_usb_phy_softc {int /*<<< orphan*/  socid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ocd_data; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTK_SOC_UNKNOWN ; 
 int /*<<< orphan*/  compat_data ; 
 struct mtk_usb_phy_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct mtk_usb_phy_softc *sc = FUNC0(dev);

	if (!FUNC3(dev))
		return (ENXIO);
	if ((sc->socid =
	    FUNC2(dev, compat_data)->ocd_data) ==
	    MTK_SOC_UNKNOWN)
		return (ENXIO);

	FUNC1(dev, "MTK USB PHY");

	return (0);
}
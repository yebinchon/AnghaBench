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
struct ar71xx_wdog_softc {int reboot_from_watchdog; int /*<<< orphan*/  dev; scalar_t__ debug; scalar_t__ armed; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_RST_WDOG_CONTROL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ar71xx_wdog_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RST_WDOG_ACTION_NOACTION ; 
 int RST_WDOG_LAST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar71xx_wdog_watchdog_fn ; 
 struct ar71xx_wdog_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  watchdog_list ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct ar71xx_wdog_softc *sc = FUNC4(dev);
	
	/* Initialise */
	sc->reboot_from_watchdog = 0;
	sc->armed = 0;
	sc->debug = 0;

	if (FUNC0(AR71XX_RST_WDOG_CONTROL) & RST_WDOG_LAST) {
		FUNC5 (dev, 
		    "Previous reset was due to watchdog timeout\n");
		sc->reboot_from_watchdog = 1;
	}

	FUNC1(AR71XX_RST_WDOG_CONTROL, RST_WDOG_ACTION_NOACTION);

	sc->dev = dev;
	FUNC2(watchdog_list, ar71xx_wdog_watchdog_fn, sc, 0);
	FUNC3(dev);

	return (0);
}
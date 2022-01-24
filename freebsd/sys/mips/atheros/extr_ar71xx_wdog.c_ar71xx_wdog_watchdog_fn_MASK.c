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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
typedef  unsigned long long u_int ;
struct ar71xx_wdog_softc {int armed; int /*<<< orphan*/  dev; scalar_t__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_RST_WDOG_CONTROL ; 
 int /*<<< orphan*/  AR71XX_RST_WDOG_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int RST_WDOG_ACTION_NOACTION ; 
 int RST_WDOG_ACTION_RESET ; 
 unsigned long long WD_INTERVAL ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC3(void *private, u_int cmd, int *error)
{
	struct ar71xx_wdog_softc *sc = private;
	uint64_t timer_val;

	cmd &= WD_INTERVAL;
	if (sc->debug)
		FUNC2(sc->dev, "ar71xx_wdog_watchdog_fn: cmd: %x\n", cmd);
	if (cmd > 0) {
		timer_val = (uint64_t)(1ULL << cmd) * FUNC1() /
		    1000000000;
		if (sc->debug)
			FUNC2(sc->dev, "ar71xx_wdog_watchdog_fn: programming timer: %jx\n", (uintmax_t) timer_val);
		/*
		 * Load timer with large enough value to prevent spurious
		 * reset
		 */
		FUNC0(AR71XX_RST_WDOG_TIMER, 
		    FUNC1() * 10);
		FUNC0(AR71XX_RST_WDOG_CONTROL, 
		    RST_WDOG_ACTION_RESET);
		FUNC0(AR71XX_RST_WDOG_TIMER, 
		    (timer_val & 0xffffffff));
		sc->armed = 1;
		*error = 0;
	} else {
		if (sc->debug)
			FUNC2(sc->dev, "ar71xx_wdog_watchdog_fn: disarming\n");
		if (sc->armed) {
			FUNC0(AR71XX_RST_WDOG_CONTROL, 
			    RST_WDOG_ACTION_NOACTION);
			sc->armed = 0;
		}
	}
}
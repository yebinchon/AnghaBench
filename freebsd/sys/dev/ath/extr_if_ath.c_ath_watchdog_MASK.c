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
typedef  int uint32_t ;
struct ieee80211com {int /*<<< orphan*/  ic_oerrors; } ;
struct TYPE_2__ {int /*<<< orphan*/  ast_watchdog; } ;
struct ath_softc {scalar_t__ sc_wd_timer; int /*<<< orphan*/  sc_wd_ch; int /*<<< orphan*/  sc_resettask; int /*<<< orphan*/  sc_tq; TYPE_1__ sc_stats; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_ah; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ath_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;
	int do_reset = 0;

	FUNC0(sc);

	if (sc->sc_wd_timer != 0 && --sc->sc_wd_timer == 0) {
		uint32_t hangs;

		FUNC3(sc, HAL_PM_AWAKE);

		if (FUNC1(sc->sc_ah, 0xffff, &hangs) &&
		    hangs != 0) {
			FUNC6(sc->sc_dev, "%s hang detected (0x%x)\n",
			    hangs & 0xff ? "bb" : "mac", hangs);
		} else
			FUNC6(sc->sc_dev, "device timeout\n");
		do_reset = 1;
		FUNC5(ic->ic_oerrors, 1);
		sc->sc_stats.ast_watchdog++;

		FUNC2(sc);
	}

	/*
	 * We can't hold the lock across the ath_reset() call.
	 *
	 * And since this routine can't hold a lock and sleep,
	 * do the reset deferred.
	 */
	if (do_reset) {
		FUNC7(sc->sc_tq, &sc->sc_resettask);
	}

	FUNC4(&sc->sc_wd_ch, hz);
}
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
struct rl_softc {int rl_flags; scalar_t__ rl_twister; int /*<<< orphan*/  rl_stat_callout; scalar_t__ rl_twister_enable; int /*<<< orphan*/  rl_dev; int /*<<< orphan*/  rl_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ DONE ; 
 int RL_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),struct rl_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC7(void *xsc)
{
	struct rl_softc		*sc = xsc;
	struct mii_data		*mii;
	int ticks;

	FUNC0(sc);
	/*
	 * If we're doing the twister cable calibration, then we need to defer
	 * watchdog timeouts.  This is a no-op in normal operations, but
	 * can falsely trigger when the cable calibration takes a while and
	 * there was traffic ready to go when rl was started.
	 *
	 * We don't defer mii_tick since that updates the mii status, which
	 * helps the twister process, at least according to similar patches
	 * for the Linux driver I found online while doing the fixes.  Worst
	 * case is a few extra mii reads during calibration.
	 */
	mii = FUNC2(sc->rl_miibus);
	FUNC3(mii);
	if ((sc->rl_flags & RL_FLAG_LINK) == 0)
		FUNC4(sc->rl_dev);
	if (sc->rl_twister_enable) {
		if (sc->rl_twister == DONE)
			FUNC6(sc);
		else
			FUNC5(sc);
		if (sc->rl_twister == DONE)
			ticks = hz;
		else
			ticks = hz / 10;
	} else {
		FUNC6(sc);
		ticks = hz;
	}

	FUNC1(&sc->rl_stat_callout, ticks, rl_tick, sc);
}
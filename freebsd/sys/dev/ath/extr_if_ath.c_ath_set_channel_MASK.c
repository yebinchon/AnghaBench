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
struct ieee80211com {scalar_t__ ic_curchan; scalar_t__ ic_bsschan; struct ath_softc* ic_softc; } ;
struct ath_softc {int sc_syncbeacon; int /*<<< orphan*/  sc_scanning; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct ath_softc *sc = ic->ic_softc;

	FUNC0(sc);
	FUNC4(sc, HAL_PM_AWAKE);
	FUNC1(sc);

	(void) FUNC2(sc, ic->ic_curchan);
	/*
	 * If we are returning to our bss channel then mark state
	 * so the next recv'd beacon's tsf will be used to sync the
	 * beacon timers.  Note that since we only hear beacons in
	 * sta/ibss mode this has no effect in other operating modes.
	 */
	FUNC0(sc);
	if (!sc->sc_scanning && ic->ic_curchan == ic->ic_bsschan)
		sc->sc_syncbeacon = 1;
	FUNC3(sc);
	FUNC1(sc);
}
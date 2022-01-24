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
struct ieee80211com {int dummy; } ;
struct bwi_softc {int sc_nmac; int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/ * sc_mac; int /*<<< orphan*/  sc_watchdog_timer; int /*<<< orphan*/  sc_calib_ch; int /*<<< orphan*/  sc_led_blink_ch; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct bwi_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	int i;

	FUNC3(sc, 1);
	FUNC4(&sc->sc_led_blink_ch);
	FUNC4(&sc->sc_calib_ch);
	FUNC4(&sc->sc_watchdog_timer);
	FUNC5(ic);

	for (i = 0; i < sc->sc_nmac; ++i)
		FUNC2(&sc->sc_mac[i]);
	FUNC1(sc);
	FUNC7(sc->sc_tq);
	FUNC6(&sc->sc_snd);

	FUNC0(sc);

	return (0);
}
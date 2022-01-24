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
struct bwi_softc {int sc_flags; int sc_nmac; int /*<<< orphan*/  sc_watchdog_timer; scalar_t__ sc_tx_timer; struct bwi_mac* sc_mac; TYPE_1__* sc_cur_regwin; scalar_t__ sc_led_blinking; int /*<<< orphan*/  sc_led_blink_ch; int /*<<< orphan*/  sc_calib_ch; } ;
struct bwi_regwin {int dummy; } ;
struct bwi_mac {int mac_flags; struct bwi_regwin mac_regwin; } ;
struct TYPE_2__ {scalar_t__ rw_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_ALL_INTRS ; 
 int /*<<< orphan*/  FUNC0 (struct bwi_softc*) ; 
 int BWI_F_RUNNING ; 
 int BWI_F_STOP ; 
 int BWI_MAC_F_INITED ; 
 int /*<<< orphan*/  BWI_MAC_INTR_MASK ; 
 scalar_t__ BWI_REGWIN_T_MAC ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*) ; 
 int FUNC7 (struct bwi_softc*,struct bwi_regwin*,struct bwi_regwin**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct bwi_softc *sc, int statechg)
{
	struct bwi_mac *mac;
	int i, error, pwr_off = 0;

	FUNC0(sc);

	FUNC8(&sc->sc_calib_ch);
	FUNC8(&sc->sc_led_blink_ch);
	sc->sc_led_blinking = 0;
	sc->sc_flags |= BWI_F_STOP;

	if (sc->sc_flags & BWI_F_RUNNING) {
		FUNC2(sc->sc_cur_regwin->rw_type == BWI_REGWIN_T_MAC,
		    ("current regwin type %d", sc->sc_cur_regwin->rw_type));
		mac = (struct bwi_mac *)sc->sc_cur_regwin;

		FUNC4(sc, BWI_ALL_INTRS);
		FUNC1(sc, BWI_MAC_INTR_MASK);
		FUNC6(mac);
	}

	for (i = 0; i < sc->sc_nmac; ++i) {
		struct bwi_regwin *old_rw;

		mac = &sc->sc_mac[i];
		if ((mac->mac_flags & BWI_MAC_F_INITED) == 0)
			continue;

		error = FUNC7(sc, &mac->mac_regwin, &old_rw);
		if (error)
			continue;

		FUNC5(mac);
		pwr_off = 1;

		FUNC7(sc, old_rw, NULL);
	}

	if (pwr_off)
		FUNC3(sc);

	sc->sc_tx_timer = 0;
	FUNC8(&sc->sc_watchdog_timer);
	sc->sc_flags &= ~BWI_F_RUNNING;
}
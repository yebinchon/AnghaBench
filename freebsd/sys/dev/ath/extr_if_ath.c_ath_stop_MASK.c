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
struct ath_softc {int /*<<< orphan*/ * sc_rxlink; int /*<<< orphan*/  sc_invalid; scalar_t__ sc_blinking; int /*<<< orphan*/  sc_ledon; int /*<<< orphan*/  sc_ledpin; int /*<<< orphan*/  sc_ledtimer; scalar_t__ sc_softled; scalar_t__ sc_running; scalar_t__ sc_wd_timer; int /*<<< orphan*/  sc_wd_ch; TYPE_1__* sc_tx99; struct ath_hal* sc_ah; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  ATH_RESET_DEFAULT ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(struct ath_softc *sc)
{
	struct ath_hal *ah = sc->sc_ah;

	FUNC0(sc);

	/*
	 * Wake the hardware up before fiddling with it.
	 */
	FUNC7(sc, HAL_PM_AWAKE);

	if (sc->sc_running) {
		/*
		 * Shutdown the hardware and driver:
		 *    reset 802.11 state machine
		 *    turn off timers
		 *    disable interrupts
		 *    turn off the radio
		 *    clear transmit machinery
		 *    clear receive machinery
		 *    drain and release tx queues
		 *    reclaim beacon resources
		 *    power down hardware
		 *
		 * Note that some of this work is not possible if the
		 * hardware is gone (invalid).
		 */
#ifdef ATH_TX99_DIAG
		if (sc->sc_tx99 != NULL)
			sc->sc_tx99->stop(sc->sc_tx99);
#endif
		FUNC9(&sc->sc_wd_ch);
		sc->sc_wd_timer = 0;
		sc->sc_running = 0;
		if (!sc->sc_invalid) {
			if (sc->sc_softled) {
				FUNC9(&sc->sc_ledtimer);
				FUNC3(ah, sc->sc_ledpin,
					!sc->sc_ledon);
				sc->sc_blinking = 0;
			}
			FUNC4(ah, 0);
		}
		/* XXX we should stop RX regardless of whether it's valid */
		if (!sc->sc_invalid) {
			FUNC8(sc, 1);
			FUNC5(ah);
		} else
			sc->sc_rxlink = NULL;
		FUNC2(sc, ATH_RESET_DEFAULT);
		FUNC1(sc);	/* XXX not needed */
	}

	/* And now, restore the current power state */
	FUNC6(sc);
}
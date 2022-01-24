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
struct ieee80211com {scalar_t__ ic_nrunning; struct ath_softc* ic_softc; } ;
struct ath_softc {TYPE_1__* sc_tx99; int /*<<< orphan*/  sc_invalid; scalar_t__ sc_running; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* start ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int EDOOFUS ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  HAL_PM_FULL_SLEEP ; 
 int FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC10(struct ieee80211com *ic)
{
	struct ath_softc *sc = ic->ic_softc;
	int error = EDOOFUS;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		/*
		 * To avoid rescanning another access point,
		 * do not call ath_init() here.  Instead,
		 * only reflect promisc mode settings.
		 */
		if (sc->sc_running) {
			FUNC5(sc, HAL_PM_AWAKE);
			FUNC3(sc);
			FUNC4(sc);
		} else if (!sc->sc_invalid) {
			/*
			 * Beware of being called during attach/detach
			 * to reset promiscuous mode.  In that case we
			 * will still be marked UP but not RUNNING.
			 * However trying to re-init the interface
			 * is the wrong thing to do as we've already
			 * torn down much of our state.  There's
			 * probably a better way to deal with this.
			 */
			error = FUNC2(sc);
		}
	} else {
		FUNC7(sc);
		if (!sc->sc_invalid)
			FUNC6(sc, HAL_PM_FULL_SLEEP, 1);
	}
	FUNC1(sc);

	if (error == 0) {                        
#ifdef ATH_TX99_DIAG
		if (sc->sc_tx99 != NULL)
			sc->sc_tx99->start(sc->sc_tx99);
		else
#endif
		FUNC8(ic);
	}
}
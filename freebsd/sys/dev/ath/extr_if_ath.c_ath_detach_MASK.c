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
struct ath_softc {int /*<<< orphan*/  sc_ah; int /*<<< orphan*/  sc_alq; int /*<<< orphan*/  sc_rc; TYPE_1__* sc_tx99; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_ic; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* detach ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int
FUNC19(struct ath_softc *sc)
{

	/*
	 * NB: the order of these is important:
	 * o stop the chip so no more interrupts will fire
	 * o call the 802.11 layer before detaching the hal to
	 *   insure callbacks into the driver to delete global
	 *   key cache entries can be handled
	 * o free the taskqueue which drains any pending tasks
	 * o reclaim the tx queue data structures after calling
	 *   the 802.11 layer as we'll get called back to reclaim
	 *   node state and potentially want to use them
	 * o to cleanup the tx queues the hal is called, so detach
	 *   it last
	 * Other than that, it's straightforward...
	 */

	/*
	 * XXX Wake the hardware up first.  ath_stop() will still
	 * wake it up first, but I'd rather do it here just to
	 * ensure it's awake.
	 */
	FUNC0(sc);
	FUNC7(sc, HAL_PM_AWAKE);
	FUNC8(sc, HAL_PM_AWAKE, 1);

	/*
	 * Stop things cleanly.
	 */
	FUNC12(sc);
	FUNC1(sc);

	FUNC15(&sc->sc_ic);
	FUNC18(sc->sc_tq);
#ifdef ATH_TX99_DIAG
	if (sc->sc_tx99 != NULL)
		sc->sc_tx99->detach(sc->sc_tx99);
#endif
	FUNC9(sc->sc_rc);
#ifdef	ATH_DEBUG_ALQ
	if_ath_alq_tidyup(&sc->sc_alq);
#endif
	FUNC6(sc);
	FUNC2(sc);
	FUNC11(sc);
	FUNC4(sc);
	FUNC3(sc);
	FUNC14(sc);
	FUNC10(sc);
	FUNC13(sc);
	FUNC5(sc->sc_ah);	/* NB: sets chip in full sleep */

	return 0;
}
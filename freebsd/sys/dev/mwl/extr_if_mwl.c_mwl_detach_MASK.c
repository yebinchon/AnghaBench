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
struct mwl_softc {int /*<<< orphan*/  sc_snd; int /*<<< orphan*/  sc_mh; int /*<<< orphan*/  sc_watchdog; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct mwl_softc*) ; 

int
FUNC10(struct mwl_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);
	FUNC8(sc);
	FUNC2(sc);
	/*
	 * NB: the order of these is important:
	 * o call the 802.11 layer before detaching the hal to
	 *   insure callbacks into the driver to delete global
	 *   key cache entries can be handled
	 * o reclaim the tx queue data structures after calling
	 *   the 802.11 layer as we'll get called back to reclaim
	 *   node state and potentially want to use them
	 * o to cleanup the tx queues the hal is called, so detach
	 *   it last
	 * Other than that, it's straightforward...
	 */
	FUNC4(ic);
	FUNC3(&sc->sc_watchdog);
	FUNC6(sc);
	FUNC1(sc);
	FUNC9(sc);
	FUNC7(sc->sc_mh);
	FUNC5(&sc->sc_snd);

	return 0;
}
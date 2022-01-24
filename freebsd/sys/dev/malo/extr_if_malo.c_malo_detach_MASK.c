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
struct malo_softc {int /*<<< orphan*/  malo_snd; int /*<<< orphan*/  malo_mh; int /*<<< orphan*/  malo_watchdog_timer; int /*<<< orphan*/ * malo_tq; int /*<<< orphan*/  malo_txtask; int /*<<< orphan*/  malo_rxtask; struct ieee80211com malo_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct malo_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct malo_softc *sc)
{
	struct ieee80211com *ic = &sc->malo_ic;

	FUNC5(sc);

	if (sc->malo_tq != NULL) {
		FUNC8(sc->malo_tq, &sc->malo_rxtask);
		FUNC8(sc->malo_tq, &sc->malo_txtask);
		FUNC9(sc->malo_tq);
		sc->malo_tq = NULL;
	}

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
	FUNC2(ic);
	FUNC1(&sc->malo_watchdog_timer);
	FUNC3(sc);
	FUNC6(sc);
	FUNC4(sc->malo_mh);
	FUNC7(&sc->malo_snd);
	FUNC0(sc);

	return 0;
}
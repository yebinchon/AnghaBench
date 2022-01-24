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
struct mwl_softc {int /*<<< orphan*/  sc_invalid; scalar_t__ sc_running; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct mwl_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwl_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct mwl_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		if (sc->sc_running) {
			/*
			 * To avoid rescanning another access point,
			 * do not call mwl_init() here.  Instead,
			 * only reflect promisc mode settings.
			 */
			FUNC4(sc);
		} else {
			/*
			 * Beware of being called during attach/detach
			 * to reset promiscuous mode.  In that case we
			 * will still be marked UP but not RUNNING.
			 * However trying to re-init the interface
			 * is the wrong thing to do as we've already
			 * torn down much of our state.  There's
			 * probably a better way to deal with this.
			 */
			if (!sc->sc_invalid) {
				FUNC3(sc);	/* XXX lose error */
				startall = 1;
			}
		}
	} else
		FUNC5(sc);
	FUNC1(sc);
	if (startall)
		FUNC2(ic);
}
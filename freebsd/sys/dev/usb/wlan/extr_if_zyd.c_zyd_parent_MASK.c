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
struct zyd_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct zyd_softc* ic_softc; } ;

/* Variables and functions */
 int ZYD_FLAG_DETACHED ; 
 int ZYD_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct zyd_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct zyd_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	if (sc->sc_flags & ZYD_FLAG_DETACHED) {
		FUNC1(sc);
		return;
	}
	if (ic->ic_nrunning > 0) {
		if ((sc->sc_flags & ZYD_FLAG_RUNNING) == 0) {
			FUNC3(sc);
			startall = 1;
		} else
			FUNC4(sc);
	} else if (sc->sc_flags & ZYD_FLAG_RUNNING)
		FUNC5(sc);
	FUNC1(sc);
	if (startall)
		FUNC2(ic);
}
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
struct rum_softc {scalar_t__ sc_detached; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int /*<<< orphan*/  ic_vaps; struct rum_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 scalar_t__ FUNC5 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rum_softc*) ; 

__attribute__((used)) static void
FUNC7(struct ieee80211com *ic)
{
	struct rum_softc *sc = ic->ic_softc;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);

	FUNC0(sc);
	if (sc->sc_detached) {
		FUNC1(sc);
		return;
	}
	FUNC1(sc);

	if (ic->ic_nrunning > 0) {
		if (FUNC5(sc) == 0)
			FUNC3(ic);
		else
			FUNC4(vap);
	} else
		FUNC6(sc);
}
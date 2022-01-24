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
struct iwm_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; struct iwm_softc* ic_softc; } ;

/* Variables and functions */
 int IWM_FLAG_HW_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct iwm_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		if (!(sc->sc_flags & IWM_FLAG_HW_INITED)) {
			FUNC3(sc);
			startall = 1;
		}
	} else if (sc->sc_flags & IWM_FLAG_HW_INITED)
		FUNC4(sc);
	FUNC1(sc);
	if (startall)
		FUNC2(ic);
}
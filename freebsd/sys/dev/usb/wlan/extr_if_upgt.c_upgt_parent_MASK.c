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
struct upgt_softc {int sc_flags; } ;
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_allmulti; scalar_t__ ic_promisc; struct upgt_softc* ic_softc; } ;

/* Variables and functions */
 int UPGT_FLAG_DETACHED ; 
 int UPGT_FLAG_INITDONE ; 
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct upgt_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct upgt_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	if (sc->sc_flags & UPGT_FLAG_DETACHED) {
		FUNC1(sc);
		return;
	}
	if (ic->ic_nrunning > 0) {
		if (sc->sc_flags & UPGT_FLAG_INITDONE) {
			if (ic->ic_allmulti > 0 || ic->ic_promisc > 0)
				FUNC4(sc);
		} else {
			FUNC3(sc);
			startall = 1;
		}
	} else if (sc->sc_flags & UPGT_FLAG_INITDONE)
		FUNC5(sc);
	FUNC1(sc);
	if (startall)
		FUNC2(ic);
}
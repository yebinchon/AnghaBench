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
struct ieee80211com {scalar_t__ ic_nrunning; struct bwn_softc* ic_softc; } ;
struct bwn_softc {int sc_flags; } ;

/* Variables and functions */
 int BWN_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct bwn_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	if (ic->ic_nrunning > 0) {
		if ((sc->sc_flags & BWN_FLAG_RUNNING) == 0) {
			FUNC2(sc);
			startall = 1;
		} else
			FUNC4(ic);
	} else if (sc->sc_flags & BWN_FLAG_RUNNING)
		FUNC3(sc);
	FUNC1(sc);

	if (startall)
		FUNC5(ic);
}
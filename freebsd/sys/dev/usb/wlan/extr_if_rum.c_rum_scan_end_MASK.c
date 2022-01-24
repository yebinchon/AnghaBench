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
struct rum_softc {int /*<<< orphan*/  sc_bssid; } ;
struct ieee80211com {int ic_flags_ext; scalar_t__ ic_opmode; struct rum_softc* ic_softc; } ;

/* Variables and functions */
 int IEEE80211_FEXT_BGSCAN ; 
 scalar_t__ IEEE80211_M_AHDEMO ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rum_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct rum_softc *sc = ic->ic_softc;

	if (ic->ic_flags_ext & IEEE80211_FEXT_BGSCAN) {
		FUNC0(sc);
		if (ic->ic_opmode != IEEE80211_M_AHDEMO)
			FUNC3(sc);
		else
			FUNC2(sc);
		FUNC4(sc, sc->sc_bssid);
		FUNC1(sc);
	}
}
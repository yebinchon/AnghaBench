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
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct rt2860_softc {struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ IEEE80211_S_RUN ; 
 struct ieee80211vap* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*) ; 

__attribute__((used)) static void
FUNC3(struct rt2860_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC1(&ic->ic_vaps);

	FUNC0(2, ("GP timeout state=%d\n", vap->iv_state));

	if (vap->iv_state == IEEE80211_S_RUN)
		FUNC2(sc);
}
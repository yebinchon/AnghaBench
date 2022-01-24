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
struct ieee80211com {int ic_flags; int /*<<< orphan*/  ic_curchan; } ;
struct urtw_softc {int sc_flags; scalar_t__ sc_state; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int IEEE80211_DUR_SHSLOT ; 
 int IEEE80211_DUR_SLOT ; 
 int IEEE80211_F_SHSLOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_S_ASSOC ; 
 int /*<<< orphan*/  URTW_8187B_EIFS ; 
 int /*<<< orphan*/  URTW_CARRIER_SCOUNT ; 
 int /*<<< orphan*/  URTW_CW_VAL ; 
 int /*<<< orphan*/  URTW_DIFS ; 
 int /*<<< orphan*/  URTW_EIFS ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*) ; 
 int URTW_RTL8187B ; 
 int URTW_RUNNING ; 
 int /*<<< orphan*/  URTW_SIFS ; 
 int /*<<< orphan*/  URTW_SLOT ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void *arg, int pending)
{
	struct urtw_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;
	int error;

	FUNC1(sc);
	if ((sc->sc_flags & URTW_RUNNING) == 0) {
		FUNC2(sc);
		return;
	}
	if (sc->sc_flags & URTW_RTL8187B) {
		FUNC3(sc, URTW_SIFS, 0x22);
		if (FUNC0(ic->ic_curchan))
			FUNC3(sc, URTW_SLOT, IEEE80211_DUR_SHSLOT);
		else
			FUNC3(sc, URTW_SLOT, IEEE80211_DUR_SLOT);
		FUNC3(sc, URTW_8187B_EIFS, 0x5b);
		FUNC3(sc, URTW_CARRIER_SCOUNT, 0x5b);
	} else {
		FUNC3(sc, URTW_SIFS, 0x22);
		if (sc->sc_state == IEEE80211_S_ASSOC &&
		    ic->ic_flags & IEEE80211_F_SHSLOT)
			FUNC3(sc, URTW_SLOT, IEEE80211_DUR_SHSLOT);
		else
			FUNC3(sc, URTW_SLOT, IEEE80211_DUR_SLOT);
		if (FUNC0(ic->ic_curchan)) {
			FUNC3(sc, URTW_DIFS, 0x14);
			FUNC3(sc, URTW_EIFS, 0x5b - 0x14);
			FUNC3(sc, URTW_CW_VAL, 0x73);
		} else {
			FUNC3(sc, URTW_DIFS, 0x24);
			FUNC3(sc, URTW_EIFS, 0x5b - 0x24);
			FUNC3(sc, URTW_CW_VAL, 0xa5);
		}
	}
fail:
	FUNC2(sc);
}
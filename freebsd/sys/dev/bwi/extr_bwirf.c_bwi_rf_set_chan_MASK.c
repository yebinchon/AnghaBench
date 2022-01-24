#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct bwi_softc {scalar_t__ sc_locale; } ;
struct TYPE_2__ {int rf_curchan; } ;
struct bwi_mac {TYPE_1__ mac_rf; struct bwi_softc* mac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_COMM_MOBJ ; 
 int /*<<< orphan*/  BWI_COMM_MOBJ_CHAN ; 
 int /*<<< orphan*/  BWI_HFLAG_NOT_JAPAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BWI_RF_CHAN ; 
 int /*<<< orphan*/  BWI_RF_CHAN_EX ; 
 scalar_t__ BWI_SPROM_LOCALE_JAPAN ; 
 int /*<<< orphan*/  FUNC1 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bwi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bwi_mac*,int /*<<< orphan*/ ) ; 
 int IEEE80211_CHAN_ANY ; 
 int /*<<< orphan*/  FUNC7 (struct bwi_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bwi_mac*,int) ; 

void
FUNC9(struct bwi_mac *mac, u_int chan, int work_around)
{
	struct bwi_softc *sc = mac->mac_sc;

	if (chan == IEEE80211_CHAN_ANY)
		return;

	FUNC7(mac, BWI_COMM_MOBJ, BWI_COMM_MOBJ_CHAN, chan);

	/* TODO: 11A */

	if (work_around)
		FUNC8(mac, chan);

	FUNC3(sc, BWI_RF_CHAN, FUNC0(chan));

	if (chan == 14) {
		if (sc->sc_locale == BWI_SPROM_LOCALE_JAPAN)
			FUNC5(mac, BWI_HFLAG_NOT_JAPAN);
		else
			FUNC6(mac, BWI_HFLAG_NOT_JAPAN);
		FUNC2(sc, BWI_RF_CHAN_EX, (1 << 11)); /* XXX */
	} else {
		FUNC1(sc, BWI_RF_CHAN_EX, 0x840); /* XXX */
	}
	FUNC4(8000);	/* DELAY(2000); */

	mac->mac_rf.rf_curchan = chan;
}
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
typedef  int uint8_t ;
struct ieee80211com {int ic_txpowlimit; scalar_t__ ic_opmode; int ic_flags; } ;
struct ural_softc {int rf_rev; int /*<<< orphan*/ * txpow; struct ieee80211com sc_ic; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int chan; int r1; int r2; int r4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int) ; 
 int IEEE80211_CHAN_ANY ; 
 int IEEE80211_F_SCAN ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int RAL_JAPAN_FILTER ; 
 int /*<<< orphan*/  RAL_RF1 ; 
 int /*<<< orphan*/  RAL_RF2 ; 
 int /*<<< orphan*/  RAL_RF3 ; 
 int /*<<< orphan*/  RAL_RF4 ; 
#define  RAL_RF_2522 134 
#define  RAL_RF_2523 133 
#define  RAL_RF_2524 132 
#define  RAL_RF_2525 131 
#define  RAL_RF_2525E 130 
#define  RAL_RF_2526 129 
#define  RAL_RF_5222 128 
 int /*<<< orphan*/  RAL_STA_CSR0 ; 
 int hz ; 
 int FUNC2 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ural_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ural_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ural_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int* ural_rf2522_r2 ; 
 int* ural_rf2523_r2 ; 
 int* ural_rf2524_r2 ; 
 int* ural_rf2525_hi_r2 ; 
 int* ural_rf2525_r2 ; 
 int* ural_rf2525e_r2 ; 
 int* ural_rf2526_hi_r2 ; 
 int* ural_rf2526_r2 ; 
 TYPE_1__* ural_rf5222 ; 
 int /*<<< orphan*/  FUNC9 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ural_softc*,struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC11(struct ural_softc *sc, struct ieee80211_channel *c)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint8_t power, tmp;
	int i, chan;

	chan = FUNC2(ic, c);
	if (chan == 0 || chan == IEEE80211_CHAN_ANY)
		return;

	if (FUNC1(c))
		power = FUNC3(sc->txpow[chan - 1], 31);
	else
		power = 31;

	/* adjust txpower using ifconfig settings */
	power -= (100 - ic->ic_txpowlimit) / 8;

	FUNC0(2, "setting channel to %u, txpower to %u\n", chan, power);

	switch (sc->rf_rev) {
	case RAL_RF_2522:
		FUNC9(sc, RAL_RF1, 0x00814);
		FUNC9(sc, RAL_RF2, ural_rf2522_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x00040);
		break;

	case RAL_RF_2523:
		FUNC9(sc, RAL_RF1, 0x08804);
		FUNC9(sc, RAL_RF2, ural_rf2523_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x38044);
		FUNC9(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
		break;

	case RAL_RF_2524:
		FUNC9(sc, RAL_RF1, 0x0c808);
		FUNC9(sc, RAL_RF2, ural_rf2524_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x00040);
		FUNC9(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
		break;

	case RAL_RF_2525:
		FUNC9(sc, RAL_RF1, 0x08808);
		FUNC9(sc, RAL_RF2, ural_rf2525_hi_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x18044);
		FUNC9(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);

		FUNC9(sc, RAL_RF1, 0x08808);
		FUNC9(sc, RAL_RF2, ural_rf2525_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x18044);
		FUNC9(sc, RAL_RF4, (chan == 14) ? 0x00280 : 0x00286);
		break;

	case RAL_RF_2525E:
		FUNC9(sc, RAL_RF1, 0x08808);
		FUNC9(sc, RAL_RF2, ural_rf2525e_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x18044);
		FUNC9(sc, RAL_RF4, (chan == 14) ? 0x00286 : 0x00282);
		break;

	case RAL_RF_2526:
		FUNC9(sc, RAL_RF2, ural_rf2526_hi_r2[chan - 1]);
		FUNC9(sc, RAL_RF4, (chan & 1) ? 0x00386 : 0x00381);
		FUNC9(sc, RAL_RF1, 0x08804);

		FUNC9(sc, RAL_RF2, ural_rf2526_r2[chan - 1]);
		FUNC9(sc, RAL_RF3, power << 7 | 0x18044);
		FUNC9(sc, RAL_RF4, (chan & 1) ? 0x00386 : 0x00381);
		break;

	/* dual-band RF */
	case RAL_RF_5222:
		for (i = 0; ural_rf5222[i].chan != chan; i++);

		FUNC9(sc, RAL_RF1, ural_rf5222[i].r1);
		FUNC9(sc, RAL_RF2, ural_rf5222[i].r2);
		FUNC9(sc, RAL_RF3, power << 7 | 0x00040);
		FUNC9(sc, RAL_RF4, ural_rf5222[i].r4);
		break;
	}

	if (ic->ic_opmode != IEEE80211_M_MONITOR &&
	    (ic->ic_flags & IEEE80211_F_SCAN) == 0) {
		/* set Japan filter bit for channel 14 */
		tmp = FUNC4(sc, 70);

		tmp &= ~RAL_JAPAN_FILTER;
		if (chan == 14)
			tmp |= RAL_JAPAN_FILTER;

		FUNC5(sc, 70, tmp);

		/* clear CRC errors */
		FUNC8(sc, RAL_STA_CSR0);

		FUNC7(sc, hz / 100);
		FUNC6(sc);
	}

	/* XXX doesn't belong here */
	/* update basic rate set */
	FUNC10(sc, c);

	/* give the hardware some time to do the switchover */
	FUNC7(sc, hz / 100);
}
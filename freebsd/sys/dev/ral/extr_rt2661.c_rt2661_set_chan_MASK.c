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
typedef  int uint8_t ;
typedef  scalar_t__ u_int ;
struct ieee80211com {int dummy; } ;
struct rt2661_softc {int* txpow; int rffreq; scalar_t__ rf_rev; struct ieee80211_channel* sc_curchan; int /*<<< orphan*/  rfprog; struct ieee80211com sc_ic; } ;
struct rfprog {scalar_t__ chan; int r1; int r2; int r3; int r4; } ;
struct ieee80211_channel {scalar_t__ ic_flags; } ;
typedef  int int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IEEE80211_CHAN_ANY ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  RAL_RF1 ; 
 int /*<<< orphan*/  RAL_RF2 ; 
 int /*<<< orphan*/  RAL_RF3 ; 
 int /*<<< orphan*/  RAL_RF4 ; 
 int RT2661_BBPR94_DEFAULT ; 
 scalar_t__ RT2661_RF_2529 ; 
 scalar_t__ RT2661_RF_5325 ; 
 int RT2661_SMART_MODE ; 
 scalar_t__ FUNC3 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int FUNC4 (struct rt2661_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2661_softc*,int,int) ; 
 struct rfprog* rt2661_rf5225_1 ; 
 struct rfprog* rt2661_rf5225_2 ; 
 int /*<<< orphan*/  FUNC6 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2661_softc*,struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC9(struct rt2661_softc *sc, struct ieee80211_channel *c)
{
	struct ieee80211com *ic = &sc->sc_ic;
	const struct rfprog *rfprog;
	uint8_t bbp3, bbp94 = RT2661_BBPR94_DEFAULT;
	int8_t power;
	u_int i, chan;

	chan = FUNC3(ic, c);
	FUNC2(chan != 0 && chan != IEEE80211_CHAN_ANY, ("chan 0x%x", chan));

	/* select the appropriate RF settings based on what EEPROM says */
	rfprog = (sc->rfprog == 0) ? rt2661_rf5225_1 : rt2661_rf5225_2;

	/* find the settings for this channel (we know it exists) */
	for (i = 0; rfprog[i].chan != chan; i++);

	power = sc->txpow[i];
	if (power < 0) {
		bbp94 += power;
		power = 0;
	} else if (power > 31) {
		bbp94 += power - 31;
		power = 31;
	}

	/*
	 * If we are switching from the 2GHz band to the 5GHz band or
	 * vice-versa, BBP registers need to be reprogrammed.
	 */
	if (c->ic_flags != sc->sc_curchan->ic_flags) {
		FUNC8(sc, c);
		FUNC7(sc);
	}
	sc->sc_curchan = c;

	FUNC6(sc, RAL_RF1, rfprog[i].r1);
	FUNC6(sc, RAL_RF2, rfprog[i].r2);
	FUNC6(sc, RAL_RF3, rfprog[i].r3 | power << 7);
	FUNC6(sc, RAL_RF4, rfprog[i].r4 | sc->rffreq << 10);

	FUNC0(200);

	FUNC6(sc, RAL_RF1, rfprog[i].r1);
	FUNC6(sc, RAL_RF2, rfprog[i].r2);
	FUNC6(sc, RAL_RF3, rfprog[i].r3 | power << 7 | 1);
	FUNC6(sc, RAL_RF4, rfprog[i].r4 | sc->rffreq << 10);

	FUNC0(200);

	FUNC6(sc, RAL_RF1, rfprog[i].r1);
	FUNC6(sc, RAL_RF2, rfprog[i].r2);
	FUNC6(sc, RAL_RF3, rfprog[i].r3 | power << 7);
	FUNC6(sc, RAL_RF4, rfprog[i].r4 | sc->rffreq << 10);

	/* enable smart mode for MIMO-capable RFs */
	bbp3 = FUNC4(sc, 3);

	bbp3 &= ~RT2661_SMART_MODE;
	if (sc->rf_rev == RT2661_RF_5325 || sc->rf_rev == RT2661_RF_2529)
		bbp3 |= RT2661_SMART_MODE;

	FUNC5(sc, 3, bbp3);

	if (bbp94 != RT2661_BBPR94_DEFAULT)
		FUNC5(sc, 94, bbp94);

	/* 5GHz radio needs a 1ms delay here */
	if (FUNC1(c))
		FUNC0(1000);
}
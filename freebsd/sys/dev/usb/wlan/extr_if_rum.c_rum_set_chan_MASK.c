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
struct ieee80211com {struct ieee80211_channel* ic_curchan; } ;
struct rum_softc {scalar_t__ rf_rev; int* txpow; int rffreq; struct ieee80211com sc_ic; } ;
struct rfprog {int chan; int r1; int r2; int r3; int r4; } ;
struct ieee80211_channel {scalar_t__ ic_flags; } ;
typedef  int int8_t ;

/* Variables and functions */
 int IEEE80211_CHAN_ANY ; 
 int RT2573_BBPR94_DEFAULT ; 
 int /*<<< orphan*/  RT2573_RF1 ; 
 int /*<<< orphan*/  RT2573_RF2 ; 
 int /*<<< orphan*/  RT2573_RF3 ; 
 int /*<<< orphan*/  RT2573_RF4 ; 
 scalar_t__ RT2573_RF_2527 ; 
 scalar_t__ RT2573_RF_5225 ; 
 int RT2573_SMART_MODE ; 
 int hz ; 
 int FUNC0 (struct ieee80211com*,struct ieee80211_channel*) ; 
 int FUNC1 (struct rum_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*,int) ; 
 struct rfprog* rum_rf5225 ; 
 struct rfprog* rum_rf5226 ; 
 int /*<<< orphan*/  FUNC4 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rum_softc*,struct ieee80211_channel*) ; 

__attribute__((used)) static void
FUNC7(struct rum_softc *sc, struct ieee80211_channel *c)
{
	struct ieee80211com *ic = &sc->sc_ic;
	const struct rfprog *rfprog;
	uint8_t bbp3, bbp94 = RT2573_BBPR94_DEFAULT;
	int8_t power;
	int i, chan;

	chan = FUNC0(ic, c);
	if (chan == 0 || chan == IEEE80211_CHAN_ANY)
		return;

	/* select the appropriate RF settings based on what EEPROM says */
	rfprog = (sc->rf_rev == RT2573_RF_5225 ||
		  sc->rf_rev == RT2573_RF_2527) ? rum_rf5225 : rum_rf5226;

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
	if (c->ic_flags != ic->ic_curchan->ic_flags) {
		FUNC6(sc, c);
		FUNC5(sc);
	}
	ic->ic_curchan = c;

	FUNC4(sc, RT2573_RF1, rfprog[i].r1);
	FUNC4(sc, RT2573_RF2, rfprog[i].r2);
	FUNC4(sc, RT2573_RF3, rfprog[i].r3 | power << 7);
	FUNC4(sc, RT2573_RF4, rfprog[i].r4 | sc->rffreq << 10);

	FUNC4(sc, RT2573_RF1, rfprog[i].r1);
	FUNC4(sc, RT2573_RF2, rfprog[i].r2);
	FUNC4(sc, RT2573_RF3, rfprog[i].r3 | power << 7 | 1);
	FUNC4(sc, RT2573_RF4, rfprog[i].r4 | sc->rffreq << 10);

	FUNC4(sc, RT2573_RF1, rfprog[i].r1);
	FUNC4(sc, RT2573_RF2, rfprog[i].r2);
	FUNC4(sc, RT2573_RF3, rfprog[i].r3 | power << 7);
	FUNC4(sc, RT2573_RF4, rfprog[i].r4 | sc->rffreq << 10);

	FUNC3(sc, hz / 100);

	/* enable smart mode for MIMO-capable RFs */
	bbp3 = FUNC1(sc, 3);

	bbp3 &= ~RT2573_SMART_MODE;
	if (sc->rf_rev == RT2573_RF_5225 || sc->rf_rev == RT2573_RF_2527)
		bbp3 |= RT2573_SMART_MODE;

	FUNC2(sc, 3, bbp3);

	if (bbp94 != RT2573_BBPR94_DEFAULT)
		FUNC2(sc, 94, bbp94);

	/* give the chip some extra time to do the switchover */
	FUNC3(sc, hz / 100);
}
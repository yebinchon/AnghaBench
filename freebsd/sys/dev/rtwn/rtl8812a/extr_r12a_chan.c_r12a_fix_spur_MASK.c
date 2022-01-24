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
typedef  int uint16_t ;
struct rtwn_softc {struct r12a_softc* sc_priv; } ;
struct r12a_softc {int chip; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  R12A_ADC_BUF_CLK ; 
 int R12A_CHIP_C_CUT ; 
 int /*<<< orphan*/  R12A_RFMOD ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct ieee80211_channel*) ; 

void
FUNC4(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
	struct r12a_softc *rs = sc->sc_priv;
	uint16_t chan = FUNC3(c);

	if (rs->chip & R12A_CHIP_C_CUT) {
		if (FUNC1(c) && chan == 11) {
			FUNC2(sc, R12A_RFMOD, 0, 0xc00);
			FUNC2(sc, R12A_ADC_BUF_CLK, 0, 0x40000000);
		} else {
			FUNC2(sc, R12A_RFMOD, 0x400, 0x800);

			if (!FUNC1(c) &&	/* 20 MHz */
			    (chan == 13 || chan == 14)) {
				FUNC2(sc, R12A_RFMOD, 0, 0x300);
				FUNC2(sc, R12A_ADC_BUF_CLK,
				    0, 0x40000000);
			} else {	/* !80 Mhz */
				FUNC2(sc, R12A_RFMOD, 0x100, 0x200);
				FUNC2(sc, R12A_ADC_BUF_CLK,
				    0x40000000, 0);
			}
		}
	} else {
		/* Set ADC clock to 160M to resolve 2480 MHz spur. */
		if (!FUNC1(c) &&	/* 20 MHz */
		    (chan == 13 || chan == 14))
			FUNC2(sc, R12A_RFMOD, 0, 0x300);
		else if (FUNC0(c))
			FUNC2(sc, R12A_RFMOD, 0x100, 0x200);
	}
}
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
typedef  int uint16_t ;
struct otus_softc {int dummy; } ;
struct ieee80211_channel {int ic_freq; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int AR_BANK4_BMODE_LF_SYNTH_FREQ ; 
 int AR_BANK4_CHUP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct otus_softc*,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct otus_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct otus_softc*) ; 

int
FUNC9(struct otus_softc *sc, struct ieee80211_channel *c)
{
	uint8_t chansel, d0, d1;
	uint16_t data;
	int error;

	FUNC4(sc);

	d0 = 0;
	if (FUNC3(c)) {
		chansel = (c->ic_freq - 4800) / 5;
		if (chansel & 1)
			d0 |= FUNC1(2);
		else
			d0 |= FUNC1(1);
	} else {
		d0 |= FUNC1(2);
		if (c->ic_freq == 2484) {	/* CH 14 */
			d0 |= AR_BANK4_BMODE_LF_SYNTH_FREQ;
			chansel = 10 + (c->ic_freq - 2274) / 5;
		} else
			chansel = 16 + (c->ic_freq - 2272) / 5;
		chansel <<= 2;
	}
	d0 |= FUNC0(1) | AR_BANK4_CHUP;
	d1 = FUNC6(chansel);

	/* Write bits 0-4 of d0 and d1. */
	data = (d1 & 0x1f) << 5 | (d0 & 0x1f);
	FUNC7(sc, FUNC2(44), data);
	/* Write bits 5-7 of d0 and d1. */
	data = (d1 >> 5) << 5 | (d0 >> 5);
	FUNC7(sc, FUNC2(58), data);

	if ((error = FUNC8(sc)) == 0)
		FUNC5(sc, 10);
	return error;
}
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
typedef  int uint32_t ;
struct rt2661_softc {scalar_t__ ext_5ghz_lna; scalar_t__ ext_2ghz_lna; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 int FUNC2 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2661_PA_PE_2GHZ ; 
 int RT2661_PA_PE_5GHZ ; 
 int /*<<< orphan*/  RT2661_PHY_CSR0 ; 
 int /*<<< orphan*/  FUNC4 (struct rt2661_softc*,int,int) ; 

__attribute__((used)) static void
FUNC5(struct rt2661_softc *sc, struct ieee80211_channel *c)
{
	uint8_t bbp17, bbp35, bbp96, bbp97, bbp98, bbp104;
	uint32_t tmp;

	/* update all BBP registers that depend on the band */
	bbp17 = 0x20; bbp96 = 0x48; bbp104 = 0x2c;
	bbp35 = 0x50; bbp97 = 0x48; bbp98  = 0x48;
	if (FUNC1(c)) {
		bbp17 += 0x08; bbp96 += 0x10; bbp104 += 0x0c;
		bbp35 += 0x10; bbp97 += 0x10; bbp98  += 0x10;
	}
	if ((FUNC0(c) && sc->ext_2ghz_lna) ||
	    (FUNC1(c) && sc->ext_5ghz_lna)) {
		bbp17 += 0x10; bbp96 += 0x10; bbp104 += 0x10;
	}

	FUNC4(sc,  17, bbp17);
	FUNC4(sc,  96, bbp96);
	FUNC4(sc, 104, bbp104);

	if ((FUNC0(c) && sc->ext_2ghz_lna) ||
	    (FUNC1(c) && sc->ext_5ghz_lna)) {
		FUNC4(sc, 75, 0x80);
		FUNC4(sc, 86, 0x80);
		FUNC4(sc, 88, 0x80);
	}

	FUNC4(sc, 35, bbp35);
	FUNC4(sc, 97, bbp97);
	FUNC4(sc, 98, bbp98);

	tmp = FUNC2(sc, RT2661_PHY_CSR0);
	tmp &= ~(RT2661_PA_PE_2GHZ | RT2661_PA_PE_5GHZ);
	if (FUNC0(c))
		tmp |= RT2661_PA_PE_2GHZ;
	else
		tmp |= RT2661_PA_PE_5GHZ;
	FUNC3(sc, RT2661_PHY_CSR0, tmp);
}
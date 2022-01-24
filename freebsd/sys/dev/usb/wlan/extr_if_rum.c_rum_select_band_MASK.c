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
struct rum_softc {int bbp17; scalar_t__ ext_5ghz_lna; scalar_t__ ext_2ghz_lna; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_channel*) ; 
 scalar_t__ FUNC1 (struct ieee80211_channel*) ; 
 int /*<<< orphan*/  RT2573_PA_PE_2GHZ ; 
 int /*<<< orphan*/  RT2573_PA_PE_5GHZ ; 
 int /*<<< orphan*/  RT2573_PHY_CSR0 ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct rum_softc *sc, struct ieee80211_channel *c)
{
	uint8_t bbp17, bbp35, bbp96, bbp97, bbp98, bbp104;

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

	sc->bbp17 = bbp17;
	FUNC2(sc,  17, bbp17);
	FUNC2(sc,  96, bbp96);
	FUNC2(sc, 104, bbp104);

	if ((FUNC0(c) && sc->ext_2ghz_lna) ||
	    (FUNC1(c) && sc->ext_5ghz_lna)) {
		FUNC2(sc, 75, 0x80);
		FUNC2(sc, 86, 0x80);
		FUNC2(sc, 88, 0x80);
	}

	FUNC2(sc, 35, bbp35);
	FUNC2(sc, 97, bbp97);
	FUNC2(sc, 98, bbp98);

	if (FUNC0(c)) {
		FUNC3(sc, RT2573_PHY_CSR0, RT2573_PA_PE_2GHZ,
		    RT2573_PA_PE_5GHZ);
	} else {
		FUNC3(sc, RT2573_PHY_CSR0, RT2573_PA_PE_5GHZ,
		    RT2573_PA_PE_2GHZ);
	}
}
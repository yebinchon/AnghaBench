#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int u_int ;
struct rt2860_softc {int* txpow1; int* txpow2; int mac_ver; int freq; int rf24_20mhz; } ;
typedef  int int8_t ;
struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int) ; 
 int RT3070_PLL_PD ; 
 int RT3070_RF_BLOCK ; 
 int RT3070_RX0_PD ; 
 int RT3070_RX1_PD ; 
 int RT3070_TX0_PD ; 
 int RT3070_TX1_PD ; 
 int RT3593_RESCAL ; 
 int RT3593_VCOCAL ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* rt2860_rf2850 ; 
 TYPE_1__* rt3090_freqs ; 
 int FUNC4 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct rt2860_softc *sc, u_int chan)
{
	uint8_t h20mhz, rf, tmp;
	int8_t txpow1, txpow2;
	int i;

	/* RT5390 is 2GHz only */
	FUNC1(chan >= 1 && chan <= 14, ("chan %d not support", chan));

	/* find the settings for this channel (we know it exists) */
	for (i = 0; rt2860_rf2850[i].chan != chan; i++);

	/* use Tx power values from EEPROM */
	txpow1 = sc->txpow1[i];
	txpow2 = sc->txpow2[i];

	FUNC5(sc, 8, rt3090_freqs[i].n);
	FUNC5(sc, 9, rt3090_freqs[i].k & 0x0f);
	rf = FUNC4(sc, 11);
	rf = (rf & ~0x03) | (rt3090_freqs[i].r & 0x03);
	FUNC5(sc, 11, rf);

	rf = FUNC4(sc, 49);
	rf = (rf & ~0x3f) | (txpow1 & 0x3f);
	/* the valid range of the RF R49 is 0x00~0x27 */
	if ((rf & 0x3f) > 0x27)
		rf = (rf & ~0x3f) | 0x27;
	FUNC5(sc, 49, rf);
	if (sc->mac_ver == 0x5392) {
		rf = FUNC4(sc, 50);
		rf = (rf & ~0x3f) | (txpow2 & 0x3f);
		/* the valid range of the RF R50 is 0x00~0x27 */
		if ((rf & 0x3f) > 0x27)
			rf = (rf & ~0x3f) | 0x27;
		FUNC5(sc, 50, rf);
	}

	rf = FUNC4(sc, 1);
	rf |= RT3070_RF_BLOCK | RT3070_PLL_PD | RT3070_RX0_PD | RT3070_TX0_PD;
	if (sc->mac_ver == 0x5392)
		rf |= RT3070_RX1_PD | RT3070_TX1_PD;
	FUNC5(sc, 1, rf);

	rf = FUNC4(sc, 2);
	FUNC5(sc, 2, rf | RT3593_RESCAL);
	FUNC0(1000);
	FUNC5(sc, 2, rf & ~RT3593_RESCAL);

	rf = FUNC4(sc, 17);
	tmp = rf;
	rf = (rf & ~0x7f) | (sc->freq & 0x7f);
	rf = FUNC2(rf, 0x5f);
	if (tmp != rf)
		FUNC3(sc, 0x74, (tmp << 8 ) | rf, 0);
	
	if (sc->mac_ver == 0x5390) {
		if (chan <= 4)
			rf = 0x73;
		else if (chan >= 5 && chan <= 6)
			rf = 0x63;
		else if (chan >= 7 && chan <= 10)
			rf = 0x53;
		else
			rf = 43;
		FUNC5(sc, 55, rf);

		if (chan == 1)
			rf = 0x0c;
		else if (chan == 2)
			rf = 0x0b;
		else if (chan == 3)
			rf = 0x0a;
		else if (chan >= 4 && chan <= 6)
			rf = 0x09;
		else if (chan >= 7 && chan <= 12)
			rf = 0x08;
		else if (chan == 13)
			rf = 0x07;
		else
			rf = 0x06;
		FUNC5(sc, 59, rf);
	}

	/* Tx/Rx h20M */
	h20mhz = (sc->rf24_20mhz & 0x20) >> 5;
	rf = FUNC4(sc, 30);
	rf = (rf & ~0x06) | (h20mhz << 1) | (h20mhz << 2);
	FUNC5(sc, 30, rf);

	/* Rx BB filter VCM */
	rf = FUNC4(sc, 30);
	rf = (rf & ~0x18) | 0x10;
	FUNC5(sc, 30, rf);

	/* Initiate VCO calibration. */
	rf = FUNC4(sc, 3);
	rf |= RT3593_VCOCAL;
	FUNC5(sc, 3, rf);
}
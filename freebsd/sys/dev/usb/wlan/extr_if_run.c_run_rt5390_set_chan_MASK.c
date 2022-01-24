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
typedef  scalar_t__ u_int ;
struct run_softc {int* txpow1; int* txpow2; int mac_ver; int mac_rev; } ;
typedef  int int8_t ;
struct TYPE_4__ {scalar_t__ chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;

/* Variables and functions */
 int RT3070_PLL_PD ; 
 int RT3070_RF_BLOCK ; 
 int RT3070_RX0_PD ; 
 int RT3070_RX1_PD ; 
 int RT3070_TX0_PD ; 
 int RT3070_TX1_PD ; 
 int RT5390_VCOCAL ; 
 TYPE_2__* rt2860_rf2850 ; 
 TYPE_1__* rt3070_freqs ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct run_softc *sc, u_int chan)
{
	int8_t txpow1, txpow2;
	uint8_t rf;
	int i;

	/* find the settings for this channel (we know it exists) */
	for (i = 0; rt2860_rf2850[i].chan != chan; i++);

	/* use Tx power values from EEPROM */
	txpow1 = sc->txpow1[i];
	txpow2 = sc->txpow2[i];

	FUNC3(sc, 8, rt3070_freqs[i].n);
	FUNC3(sc, 9, rt3070_freqs[i].k & 0x0f);
	FUNC2(sc, 11, &rf);
	rf = (rf & ~0x03) | (rt3070_freqs[i].r & 0x03);
	FUNC3(sc, 11, rf);

	FUNC2(sc, 49, &rf);
	rf = (rf & ~0x3f) | (txpow1 & 0x3f);
	/* The valid range of the RF R49 is 0x00 to 0x27. */
	if ((rf & 0x3f) > 0x27)
		rf = (rf & ~0x3f) | 0x27;
	FUNC3(sc, 49, rf);

	if (sc->mac_ver == 0x5392) {
		FUNC2(sc, 50, &rf);
		rf = (rf & ~0x3f) | (txpow2 & 0x3f);
		/* The valid range of the RF R50 is 0x00 to 0x27. */
		if ((rf & 0x3f) > 0x27)
			rf = (rf & ~0x3f) | 0x27;
		FUNC3(sc, 50, rf);
	}

	FUNC2(sc, 1, &rf);
	rf |= RT3070_RF_BLOCK | RT3070_PLL_PD | RT3070_RX0_PD | RT3070_TX0_PD;
	if (sc->mac_ver == 0x5392)
		rf |= RT3070_RX1_PD | RT3070_TX1_PD;
	FUNC3(sc, 1, rf);

	if (sc->mac_ver != 0x5392) {
		FUNC2(sc, 2, &rf);
		rf |= 0x80;
		FUNC3(sc, 2, rf);
		FUNC1(sc, 10);
		rf &= 0x7f;
		FUNC3(sc, 2, rf);
	}

	FUNC0(sc);

	if (sc->mac_ver == 0x5392) {
		/* Fix for RT5392C. */
		if (sc->mac_rev >= 0x0223) {
			if (chan <= 4)
				rf = 0x0f;
			else if (chan >= 5 && chan <= 7)
				rf = 0x0e;
			else
				rf = 0x0d;
			FUNC3(sc, 23, rf);

			if (chan <= 4)
				rf = 0x0c;
			else if (chan == 5)
				rf = 0x0b;
			else if (chan >= 6 && chan <= 7)
				rf = 0x0a;
			else if (chan >= 8 && chan <= 10)
				rf = 0x09;
			else
				rf = 0x08;
			FUNC3(sc, 59, rf);
		} else {
			if (chan <= 11)
				rf = 0x0f;
			else
				rf = 0x0b;
			FUNC3(sc, 59, rf);
		}
	} else {
		/* Fix for RT5390F. */
		if (sc->mac_rev >= 0x0502) {
			if (chan <= 11)
				rf = 0x43;
			else
				rf = 0x23;
			FUNC3(sc, 55, rf);

			if (chan <= 11)
				rf = 0x0f;
			else if (chan == 12)
				rf = 0x0d;
			else
				rf = 0x0b;
			FUNC3(sc, 59, rf);
		} else {
			FUNC3(sc, 55, 0x44);
			FUNC3(sc, 59, 0x8f);
		}
	}

	/* Enable VCO calibration. */
	FUNC2(sc, 3, &rf);
	rf |= RT5390_VCOCAL;
	FUNC3(sc, 3, rf);
}
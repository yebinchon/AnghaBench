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
struct run_softc {int* txpow1; int* txpow2; int ntxchains; int* txpow3; int bbp25; int bbp26; int rf24_20mhz; } ;
typedef  int int8_t ;
struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;

/* Variables and functions */
 int RT3070_PLL_PD ; 
 int RT3070_RF_BLOCK ; 
 int RT3070_RX0_PD ; 
 int RT3070_RX1_PD ; 
 int RT3070_RX2_PD ; 
 int RT3070_TX0_PD ; 
 int RT3070_TX1_PD ; 
 int RT3070_TX2_PD ; 
 int RT5390_VCOCAL ; 
 TYPE_2__* rt2860_rf2850 ; 
 TYPE_1__* rt3070_freqs ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct run_softc *sc, u_int chan)
{
	int8_t txpow1, txpow2, txpow3;
	uint8_t h20mhz, rf;
	int i;

	/* find the settings for this channel (we know it exists) */
	for (i = 0; rt2860_rf2850[i].chan != chan; i++);

	/* use Tx power values from EEPROM */
	txpow1 = sc->txpow1[i];
	txpow2 = sc->txpow2[i];
	txpow3 = (sc->ntxchains == 3) ? sc->txpow3[i] : 0;

	if (chan <= 14) {
		FUNC1(sc, 25, sc->bbp25);
		FUNC1(sc, 26, sc->bbp26);
	} else {
		/* Enable IQ phase correction. */
		FUNC1(sc, 25, 0x09);
		FUNC1(sc, 26, 0xff);
	}

	FUNC3(sc, 8, rt3070_freqs[i].n);
	FUNC3(sc, 9, rt3070_freqs[i].k & 0x0f);
	FUNC2(sc, 11, &rf);
	rf = (rf & ~0x03) | (rt3070_freqs[i].r & 0x03);
	FUNC3(sc, 11, rf);

	/* Set pll_idoh. */
	FUNC2(sc, 11, &rf);
	rf &= ~0x4c;
	rf |= (chan <= 14) ? 0x44 : 0x48;
	FUNC3(sc, 11, rf);

	if (chan <= 14)
		rf = txpow1 & 0x1f;
	else
		rf = 0x40 | ((txpow1 & 0x18) << 1) | (txpow1 & 0x07);
	FUNC3(sc, 53, rf);

	if (chan <= 14)
		rf = txpow2 & 0x1f;
	else
		rf = 0x40 | ((txpow2 & 0x18) << 1) | (txpow2 & 0x07);
	FUNC3(sc, 55, rf);

	if (chan <= 14)
		rf = txpow3 & 0x1f;
	else
		rf = 0x40 | ((txpow3 & 0x18) << 1) | (txpow3 & 0x07);
	FUNC3(sc, 54, rf);

	rf = RT3070_RF_BLOCK | RT3070_PLL_PD;
	if (sc->ntxchains == 3)
		rf |= RT3070_TX0_PD | RT3070_TX1_PD | RT3070_TX2_PD;
	else
		rf |= RT3070_TX0_PD | RT3070_TX1_PD;
	rf |= RT3070_RX0_PD | RT3070_RX1_PD | RT3070_RX2_PD;
	FUNC3(sc, 1, rf);

	FUNC0(sc);

	FUNC3(sc, 31, (chan <= 14) ? 0xa0 : 0x80);

	h20mhz = (sc->rf24_20mhz & 0x20) >> 5; 
	FUNC2(sc, 30, &rf);
	rf = (rf & ~0x06) | (h20mhz << 1) | (h20mhz << 2);
	FUNC3(sc, 30, rf);

	FUNC2(sc, 36, &rf);
	if (chan <= 14)
		rf |= 0x80;
	else
		rf &= ~0x80;
	FUNC3(sc, 36, rf);

	/* Set vcolo_bs. */
	FUNC3(sc, 34, (chan <= 14) ? 0x3c : 0x20);
	/* Set pfd_delay. */
	FUNC3(sc, 12, (chan <= 14) ? 0x1a : 0x12);

	/* Set vco bias current control. */
	FUNC2(sc, 6, &rf);
	rf &= ~0xc0;
	if (chan <= 14)
		rf |= 0x40;
	else if (chan <= 128)
		rf |= 0x80;
	else
		rf |= 0x40;
	FUNC3(sc, 6, rf);
		
	FUNC2(sc, 30, &rf);
	rf = (rf & ~0x18) | 0x10;
	FUNC3(sc, 30, rf);

	FUNC3(sc, 10, (chan <= 14) ? 0xd3 : 0xd8);
	FUNC3(sc, 13, (chan <= 14) ? 0x12 : 0x23);

	FUNC2(sc, 51, &rf);
	rf = (rf & ~0x03) | 0x01;
	FUNC3(sc, 51, rf);
	/* Set tx_mx1_cc. */
	FUNC2(sc, 51, &rf);
	rf &= ~0x1c;
	rf |= (chan <= 14) ? 0x14 : 0x10;
	FUNC3(sc, 51, rf);
	/* Set tx_mx1_ic. */
	FUNC2(sc, 51, &rf);
	rf &= ~0xe0;
	rf |= (chan <= 14) ? 0x60 : 0x40;
	FUNC3(sc, 51, rf);
	/* Set tx_lo1_ic. */
	FUNC2(sc, 49, &rf);
	rf &= ~0x1c;
	rf |= (chan <= 14) ? 0x0c : 0x08;
	FUNC3(sc, 49, rf);
	/* Set tx_lo1_en. */
	FUNC2(sc, 50, &rf);
	FUNC3(sc, 50, rf & ~0x20);
	/* Set drv_cc. */
	FUNC2(sc, 57, &rf);
	rf &= ~0xfc;
	rf |= (chan <= 14) ?  0x6c : 0x3c;
	FUNC3(sc, 57, rf);
	/* Set rx_mix1_ic, rxa_lnactr, lna_vc, lna_inbias_en and lna_en. */
	FUNC3(sc, 44, (chan <= 14) ? 0x93 : 0x9b);
	/* Set drv_gnd_a, tx_vga_cc_a and tx_mx2_gain. */
	FUNC3(sc, 52, (chan <= 14) ? 0x45 : 0x05);
	/* Enable VCO calibration. */
	FUNC2(sc, 3, &rf);
	rf &= ~RT5390_VCOCAL;
	rf |= (chan <= 14) ? RT5390_VCOCAL : 0xbe;
	FUNC3(sc, 3, rf);

	if (chan <= 14)
		rf = 0x23;
	else if (chan <= 64)
		rf = 0x36;
	else if (chan <= 128)
		rf = 0x32;
	else
		rf = 0x30;
	FUNC3(sc, 39, rf);
	if (chan <= 14)
		rf = 0xbb;
	else if (chan <= 64)
		rf = 0xeb;
	else if (chan <= 128)
		rf = 0xb3;
	else
		rf = 0x9b;
	FUNC3(sc, 45, rf);

	/* Set FEQ/AEQ control. */
	FUNC1(sc, 105, 0x34);
}
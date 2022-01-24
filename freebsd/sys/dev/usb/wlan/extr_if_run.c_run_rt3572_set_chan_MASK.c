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
typedef  int uint32_t ;
typedef  int u_int ;
struct run_softc {int* txpow1; int* txpow2; int bbp25; int bbp26; int ntxchains; int nrxchains; int freq; int rf24_20mhz; int txmixgain_2ghz; int txmixgain_5ghz; } ;
typedef  int int8_t ;
struct TYPE_4__ {int chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_GPIO_CTRL ; 
 TYPE_2__* rt2860_rf2850 ; 
 TYPE_1__* rt3070_freqs ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct run_softc *sc, u_int chan)
{
	int8_t txpow1, txpow2;
	uint32_t tmp;
	uint8_t rf;
	int i;

	/* find the settings for this channel (we know it exists) */
	for (i = 0; rt2860_rf2850[i].chan != chan; i++);

	/* use Tx power values from EEPROM */
	txpow1 = sc->txpow1[i];
	txpow2 = sc->txpow2[i];

	if (chan <= 14) {
		FUNC0(sc, 25, sc->bbp25);
		FUNC0(sc, 26, sc->bbp26);
	} else {
		/* enable IQ phase correction */
		FUNC0(sc, 25, 0x09);
		FUNC0(sc, 26, 0xff);
	}

	FUNC4(sc, 2, rt3070_freqs[i].n);
	FUNC4(sc, 3, rt3070_freqs[i].k);
	FUNC3(sc, 6, &rf);
	rf  = (rf & ~0x0f) | rt3070_freqs[i].r;
	rf |= (chan <= 14) ? 0x08 : 0x04;
	FUNC4(sc, 6, rf);

	/* set PLL mode */
	FUNC3(sc, 5, &rf);
	rf &= ~(0x08 | 0x04);
	rf |= (chan <= 14) ? 0x04 : 0x08;
	FUNC4(sc, 5, rf);

	/* set Tx power for chain 0 */
	if (chan <= 14)
		rf = 0x60 | txpow1;
	else
		rf = 0xe0 | (txpow1 & 0xc) << 1 | (txpow1 & 0x3);
	FUNC4(sc, 12, rf);

	/* set Tx power for chain 1 */
	if (chan <= 14)
		rf = 0x60 | txpow2;
	else
		rf = 0xe0 | (txpow2 & 0xc) << 1 | (txpow2 & 0x3);
	FUNC4(sc, 13, rf);

	/* set Tx/Rx streams */
	FUNC3(sc, 1, &rf);
	rf &= ~0xfc;
	if (sc->ntxchains == 1)
		rf |= 1 << 7 | 1 << 5;  /* 1T: disable Tx chains 2 & 3 */
	else if (sc->ntxchains == 2)
		rf |= 1 << 7;           /* 2T: disable Tx chain 3 */
	if (sc->nrxchains == 1)
		rf |= 1 << 6 | 1 << 4;  /* 1R: disable Rx chains 2 & 3 */
	else if (sc->nrxchains == 2)
		rf |= 1 << 6;           /* 2R: disable Rx chain 3 */
	FUNC4(sc, 1, rf);

	/* set RF offset */
	FUNC3(sc, 23, &rf);
	rf = (rf & ~0x7f) | sc->freq;
	FUNC4(sc, 23, rf);

	/* program RF filter */
	rf = sc->rf24_20mhz;
	FUNC4(sc, 24, rf);	/* Tx */
	FUNC4(sc, 31, rf);	/* Rx */

	/* enable RF tuning */
	FUNC3(sc, 7, &rf);
	rf = (chan <= 14) ? 0xd8 : ((rf & ~0xc8) | 0x14);
	FUNC4(sc, 7, rf);

	/* TSSI */
	rf = (chan <= 14) ? 0xc3 : 0xc0;
	FUNC4(sc, 9, rf);

	/* set loop filter 1 */
	FUNC4(sc, 10, 0xf1);
	/* set loop filter 2 */
	FUNC4(sc, 11, (chan <= 14) ? 0xb9 : 0x00);

	/* set tx_mx2_ic */
	FUNC4(sc, 15, (chan <= 14) ? 0x53 : 0x43);
	/* set tx_mx1_ic */
	if (chan <= 14)
		rf = 0x48 | sc->txmixgain_2ghz;
	else
		rf = 0x78 | sc->txmixgain_5ghz;
	FUNC4(sc, 16, rf);

	/* set tx_lo1 */
	FUNC4(sc, 17, 0x23);
	/* set tx_lo2 */
	if (chan <= 14)
		rf = 0x93;
	else if (chan <= 64)
		rf = 0xb7;
	else if (chan <= 128)
		rf = 0x74;
	else
		rf = 0x72;
	FUNC4(sc, 19, rf);

	/* set rx_lo1 */
	if (chan <= 14)
		rf = 0xb3;
	else if (chan <= 64)
		rf = 0xf6;
	else if (chan <= 128)
		rf = 0xf4;
	else
		rf = 0xf3;
	FUNC4(sc, 20, rf);

	/* set pfd_delay */
	if (chan <= 14)
		rf = 0x15;
	else if (chan <= 64)
		rf = 0x3d;
	else
		rf = 0x01;
	FUNC4(sc, 25, rf);

	/* set rx_lo2 */
	FUNC4(sc, 26, (chan <= 14) ? 0x85 : 0x87);
	/* set ldo_rf_vc */
	FUNC4(sc, 27, (chan <= 14) ? 0x00 : 0x01);
	/* set drv_cc */
	FUNC4(sc, 29, (chan <= 14) ? 0x9b : 0x9f);

	FUNC2(sc, RT2860_GPIO_CTRL, &tmp);
	tmp &= ~0x8080;
	if (chan <= 14)
		tmp |= 0x80;
	FUNC5(sc, RT2860_GPIO_CTRL, tmp);

	/* enable RF tuning */
	FUNC3(sc, 7, &rf);
	FUNC4(sc, 7, rf | 0x01);

	FUNC1(sc, 2);
}
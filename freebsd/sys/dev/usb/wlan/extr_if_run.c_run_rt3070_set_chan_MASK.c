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
struct run_softc {int* txpow1; int* txpow2; int ntxchains; int nrxchains; int freq; int rf24_20mhz; } ;
typedef  int int8_t ;
struct TYPE_4__ {scalar_t__ chan; } ;
struct TYPE_3__ {int n; int k; int r; } ;

/* Variables and functions */
 TYPE_2__* rt2860_rf2850 ; 
 TYPE_1__* rt3070_freqs ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct run_softc *sc, u_int chan)
{
	int8_t txpow1, txpow2;
	uint8_t rf;
	int i;

	/* find the settings for this channel (we know it exists) */
	for (i = 0; rt2860_rf2850[i].chan != chan; i++);

	/* use Tx power values from EEPROM */
	txpow1 = sc->txpow1[i];
	txpow2 = sc->txpow2[i];

	FUNC1(sc, 2, rt3070_freqs[i].n);

	/* RT3370/RT3390: RF R3 [7:4] is not reserved bits. */
	FUNC0(sc, 3, &rf);
	rf = (rf & ~0x0f) | rt3070_freqs[i].k;
	FUNC1(sc, 3, rf);

	FUNC0(sc, 6, &rf);
	rf = (rf & ~0x03) | rt3070_freqs[i].r;
	FUNC1(sc, 6, rf);

	/* set Tx0 power */
	FUNC0(sc, 12, &rf);
	rf = (rf & ~0x1f) | txpow1;
	FUNC1(sc, 12, rf);

	/* set Tx1 power */
	FUNC0(sc, 13, &rf);
	rf = (rf & ~0x1f) | txpow2;
	FUNC1(sc, 13, rf);

	FUNC0(sc, 1, &rf);
	rf &= ~0xfc;
	if (sc->ntxchains == 1)
		rf |= 1 << 7 | 1 << 5;	/* 1T: disable Tx chains 2 & 3 */
	else if (sc->ntxchains == 2)
		rf |= 1 << 7;		/* 2T: disable Tx chain 3 */
	if (sc->nrxchains == 1)
		rf |= 1 << 6 | 1 << 4;	/* 1R: disable Rx chains 2 & 3 */
	else if (sc->nrxchains == 2)
		rf |= 1 << 6;		/* 2R: disable Rx chain 3 */
	FUNC1(sc, 1, rf);

	/* set RF offset */
	FUNC0(sc, 23, &rf);
	rf = (rf & ~0x7f) | sc->freq;
	FUNC1(sc, 23, rf);

	/* program RF filter */
	FUNC0(sc, 24, &rf);	/* Tx */
	rf = (rf & ~0x3f) | sc->rf24_20mhz;
	FUNC1(sc, 24, rf);
	FUNC0(sc, 31, &rf);	/* Rx */
	rf = (rf & ~0x3f) | sc->rf24_20mhz;
	FUNC1(sc, 31, rf);

	/* enable RF tuning */
	FUNC0(sc, 7, &rf);
	FUNC1(sc, 7, rf | 0x01);
}
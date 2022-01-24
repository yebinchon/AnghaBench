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
struct run_softc {int mac_rev; int txmixgain_2ghz; int nrxchains; scalar_t__ patch_dac; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_TX_SW_CFG1 ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG2 ; 
 int RT3070_PLL_PD ; 
 int RT3070_RF_BLOCK ; 
 int RT3593_TX_LO1 ; 
 int RT3593_TX_LO2 ; 
 int RT5390_MAC_IF_CTRL ; 
 int RT5390_MLD ; 
 int RT5390_RX_LO1 ; 
 int RT5390_RX_LO2 ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct run_softc *sc)
{
	uint8_t bbp, rf;

	if (sc->mac_rev >= 0x0211) {
		/* Enable DC filter. */
		FUNC1(sc, 103, 0xc0);
	}
	FUNC4(sc, RT2860_TX_SW_CFG1, 0);
	if (sc->mac_rev < 0x0211) {
		FUNC4(sc, RT2860_TX_SW_CFG2,
		    sc->patch_dac ? 0x2c : 0x0f);
	} else
		FUNC4(sc, RT2860_TX_SW_CFG2, 0);

	FUNC2(sc, 50, &rf);
	FUNC3(sc, 50, rf & ~RT3593_TX_LO2);

	FUNC2(sc, 51, &rf);
	rf = (rf & ~(RT3593_TX_LO1 | 0x0c)) |
	    ((sc->txmixgain_2ghz & 0x07) << 2);
	FUNC3(sc, 51, rf);

	FUNC2(sc, 38, &rf);
	FUNC3(sc, 38, rf & ~RT5390_RX_LO1);

	FUNC2(sc, 39, &rf);
	FUNC3(sc, 39, rf & ~RT5390_RX_LO2);

	FUNC2(sc, 1, &rf);
	FUNC3(sc, 1, rf & ~(RT3070_RF_BLOCK | RT3070_PLL_PD));

	FUNC2(sc, 30, &rf);
	rf = (rf & ~0x18) | 0x10;
	FUNC3(sc, 30, rf);

	/* Apply maximum likelihood detection for 2 stream case. */
	FUNC0(sc, 105, &bbp);
	if (sc->nrxchains > 1)
		FUNC1(sc, 105, bbp | RT5390_MLD);

	/* Avoid data lost and CRC error. */
	FUNC0(sc, 4, &bbp);
	FUNC1(sc, 4, bbp | RT5390_MAC_IF_CTRL);

	FUNC1(sc, 92, 0x02);
	FUNC1(sc, 82, 0x82);
	FUNC1(sc, 106, 0x05);
	FUNC1(sc, 104, 0x92);
	FUNC1(sc, 88, 0x90);
	FUNC1(sc, 148, 0xc8);
	FUNC1(sc, 47, 0x48);
	FUNC1(sc, 120, 0x50);

	FUNC1(sc, 163, 0x9d);

	/* SNR mapping. */
	FUNC1(sc, 142, 0x06);
	FUNC1(sc, 143, 0xa0);
	FUNC1(sc, 142, 0x07);
	FUNC1(sc, 143, 0xa1);
	FUNC1(sc, 142, 0x08);
	FUNC1(sc, 143, 0xa2);

	FUNC1(sc, 31, 0x08);
	FUNC1(sc, 68, 0x0b);
	FUNC1(sc, 105, 0x04);
}
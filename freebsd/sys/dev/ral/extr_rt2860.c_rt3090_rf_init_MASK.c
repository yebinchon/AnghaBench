#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct rt2860_softc {int mac_rev; int mac_ver; int rf24_20mhz; int rf24_40mhz; scalar_t__ rf_rev; int ntxchains; int nrxchains; int txmixgain_2ghz; int /*<<< orphan*/  ext_2ghz_lna; scalar_t__ patch_dac; } ;
struct TYPE_3__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT3070_GPIO_SWITCH ; 
 int /*<<< orphan*/  RT3070_LDO_CFG0 ; 
 int /*<<< orphan*/  RT3070_OPT_14 ; 
 scalar_t__ RT3070_RF_3020 ; 
 int RT3070_RF_BLOCK ; 
 int RT3070_RX0_PD ; 
 int RT3070_RX1_PD ; 
 int RT3070_RX_LO1 ; 
 int RT3070_RX_LO2 ; 
 int RT3070_TX0_PD ; 
 int RT3070_TX1_PD ; 
 int RT3070_TX_LO1 ; 
 int RT3070_TX_LO2 ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int,int) ; 
 TYPE_1__* rt3090_def_rf ; 
 int /*<<< orphan*/  FUNC6 (struct rt2860_softc*,int,int,int*) ; 
 int FUNC7 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2860_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct rt2860_softc *sc)
{
	uint32_t tmp;
	uint8_t rf, bbp;
	int i;

	rf = FUNC7(sc, 30);
	/* toggle RF R30 bit 7 */
	FUNC8(sc, 30, rf | 0x80);
	FUNC0(1000);
	FUNC8(sc, 30, rf & ~0x80);

	tmp = FUNC1(sc, RT3070_LDO_CFG0);
	tmp &= ~0x1f000000;
	if (sc->patch_dac && sc->mac_rev < 0x0211)
		tmp |= 0x0d000000;	/* 1.35V */
	else
		tmp |= 0x01000000;	/* 1.2V */
	FUNC2(sc, RT3070_LDO_CFG0, tmp);

	/* patch LNA_PE_G1 */
	tmp = FUNC1(sc, RT3070_GPIO_SWITCH);
	FUNC2(sc, RT3070_GPIO_SWITCH, tmp & ~0x20);

	/* initialize RF registers to default value */
	for (i = 0; i < FUNC3(rt3090_def_rf); i++) {
		FUNC8(sc, rt3090_def_rf[i].reg,
		    rt3090_def_rf[i].val);
	}

	/* select 20MHz bandwidth */
	FUNC8(sc, 31, 0x14);

	rf = FUNC7(sc, 6);
	FUNC8(sc, 6, rf | 0x40);

	if (sc->mac_ver != 0x3593) {
		/* calibrate filter for 20MHz bandwidth */
		sc->rf24_20mhz = 0x1f;	/* default value */
		FUNC6(sc, 0x07, 0x16, &sc->rf24_20mhz);

		/* select 40MHz bandwidth */
		bbp = FUNC4(sc, 4);
		FUNC5(sc, 4, (bbp & ~0x08) | 0x10);
		rf = FUNC7(sc, 31);
		FUNC8(sc, 31, rf | 0x20);

		/* calibrate filter for 40MHz bandwidth */
		sc->rf24_40mhz = 0x2f;	/* default value */
		FUNC6(sc, 0x27, 0x19, &sc->rf24_40mhz);

		/* go back to 20MHz bandwidth */
		bbp = FUNC4(sc, 4);
		FUNC5(sc, 4, bbp & ~0x18);
	}
	if (sc->mac_rev < 0x0211)
		FUNC8(sc, 27, 0x03);

	tmp = FUNC1(sc, RT3070_OPT_14);
	FUNC2(sc, RT3070_OPT_14, tmp | 1);

	if (sc->rf_rev == RT3070_RF_3020)
		FUNC9(sc, 0);

	bbp = FUNC4(sc, 138);
	if (sc->mac_ver == 0x3593) {
		if (sc->ntxchains == 1)
			bbp |= 0x60;	/* turn off DAC1 and DAC2 */
		else if (sc->ntxchains == 2)
			bbp |= 0x40;	/* turn off DAC2 */
		if (sc->nrxchains == 1)
			bbp &= ~0x06;	/* turn off ADC1 and ADC2 */
		else if (sc->nrxchains == 2)
			bbp &= ~0x04;	/* turn off ADC2 */
	} else {
		if (sc->ntxchains == 1)
			bbp |= 0x20;	/* turn off DAC1 */
		if (sc->nrxchains == 1)
			bbp &= ~0x02;	/* turn off ADC1 */
	}
	FUNC5(sc, 138, bbp);

	rf = FUNC7(sc, 1);
	rf &= ~(RT3070_RX0_PD | RT3070_TX0_PD);
	rf |= RT3070_RF_BLOCK | RT3070_RX1_PD | RT3070_TX1_PD;
	FUNC8(sc, 1, rf);

	rf = FUNC7(sc, 15);
	FUNC8(sc, 15, rf & ~RT3070_TX_LO2);

	rf = FUNC7(sc, 17);
	rf &= ~RT3070_TX_LO1;
	if (sc->mac_rev >= 0x0211 && !sc->ext_2ghz_lna)
		rf |= 0x20;	/* fix for long range Rx issue */
	if (sc->txmixgain_2ghz >= 2)
		rf = (rf & ~0x7) | sc->txmixgain_2ghz;
	FUNC8(sc, 17, rf);

	rf = FUNC7(sc, 20);
	FUNC8(sc, 20, rf & ~RT3070_RX_LO1);

	rf = FUNC7(sc, 21);
	FUNC8(sc, 21, rf & ~RT3070_RX_LO2);

	return (0);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
struct run_softc {int mac_ver; int mac_rev; int rf24_20mhz; int rf24_40mhz; int bbp25; int bbp26; int txmixgain_2ghz; int /*<<< orphan*/  ext_2ghz_lna; int /*<<< orphan*/  patch_dac; } ;
struct TYPE_4__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT3070_GPIO_SWITCH ; 
 int /*<<< orphan*/  RT3070_LDO_CFG0 ; 
 int /*<<< orphan*/  RT3070_OPT_14 ; 
 int RT3070_RF_BLOCK ; 
 int RT3070_RX0_PD ; 
 int RT3070_RX1_PD ; 
 int RT3070_RX_LO1 ; 
 int RT3070_RX_LO2 ; 
 int RT3070_TX0_PD ; 
 int RT3070_TX1_PD ; 
 int RT3070_TX_LO1 ; 
 int RT3070_TX_LO2 ; 
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* rt3070_def_rf ; 
 TYPE_1__* rt3572_def_rf ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct run_softc *sc)
{
	uint32_t tmp;
	uint8_t bbp4, mingain, rf, target;
	u_int i;

	FUNC6(sc, 30, &rf);
	/* toggle RF R30 bit 7 */
	FUNC7(sc, 30, rf | 0x80);
	FUNC3(sc, 10);
	FUNC7(sc, 30, rf & ~0x80);

	/* initialize RF registers to default value */
	if (sc->mac_ver == 0x3572) {
		for (i = 0; i < FUNC0(rt3572_def_rf); i++) {
			FUNC7(sc, rt3572_def_rf[i].reg,
			    rt3572_def_rf[i].val);
		}
	} else {
		for (i = 0; i < FUNC0(rt3070_def_rf); i++) {
			FUNC7(sc, rt3070_def_rf[i].reg,
			    rt3070_def_rf[i].val);
		}
	}

	if (sc->mac_ver == 0x3070 && sc->mac_rev < 0x0201) {
		/* 
		 * Change voltage from 1.2V to 1.35V for RT3070.
		 * The DAC issue (RT3070_LDO_CFG0) has been fixed
		 * in RT3070(F).
		 */
		FUNC4(sc, RT3070_LDO_CFG0, &tmp);
		tmp = (tmp & ~0x0f000000) | 0x0d000000;
		FUNC8(sc, RT3070_LDO_CFG0, tmp);

	} else if (sc->mac_ver == 0x3071) {
		FUNC6(sc, 6, &rf);
		FUNC7(sc, 6, rf | 0x40);
		FUNC7(sc, 31, 0x14);

		FUNC4(sc, RT3070_LDO_CFG0, &tmp);
		tmp &= ~0x1f000000;
		if (sc->mac_rev < 0x0211)
			tmp |= 0x0d000000;	/* 1.3V */
		else
			tmp |= 0x01000000;	/* 1.2V */
		FUNC8(sc, RT3070_LDO_CFG0, tmp);

		/* patch LNA_PE_G1 */
		FUNC4(sc, RT3070_GPIO_SWITCH, &tmp);
		FUNC8(sc, RT3070_GPIO_SWITCH, tmp & ~0x20);

	} else if (sc->mac_ver == 0x3572) {
		FUNC6(sc, 6, &rf);
		FUNC7(sc, 6, rf | 0x40);

		/* increase voltage from 1.2V to 1.35V */
		FUNC4(sc, RT3070_LDO_CFG0, &tmp);
		tmp = (tmp & ~0x1f000000) | 0x0d000000;
		FUNC8(sc, RT3070_LDO_CFG0, tmp);

		if (sc->mac_rev < 0x0211 || !sc->patch_dac) {
			FUNC3(sc, 1);	/* wait for 1msec */
			/* decrease voltage back to 1.2V */
			tmp = (tmp & ~0x1f000000) | 0x01000000;
			FUNC8(sc, RT3070_LDO_CFG0, tmp);
		}
	}

	/* select 20MHz bandwidth */
	FUNC6(sc, 31, &rf);
	FUNC7(sc, 31, rf & ~0x20);

	/* calibrate filter for 20MHz bandwidth */
	sc->rf24_20mhz = 0x1f;	/* default value */
	target = (sc->mac_ver < 0x3071) ? 0x16 : 0x13;
	FUNC5(sc, 0x07, target, &sc->rf24_20mhz);

	/* select 40MHz bandwidth */
	FUNC1(sc, 4, &bbp4);
	FUNC2(sc, 4, (bbp4 & ~0x18) | 0x10);
	FUNC6(sc, 31, &rf);
	FUNC7(sc, 31, rf | 0x20);

	/* calibrate filter for 40MHz bandwidth */
	sc->rf24_40mhz = 0x2f;	/* default value */
	target = (sc->mac_ver < 0x3071) ? 0x19 : 0x15;
	FUNC5(sc, 0x27, target, &sc->rf24_40mhz);

	/* go back to 20MHz bandwidth */
	FUNC1(sc, 4, &bbp4);
	FUNC2(sc, 4, bbp4 & ~0x18);

	if (sc->mac_ver == 0x3572) {
		/* save default BBP registers 25 and 26 values */
		FUNC1(sc, 25, &sc->bbp25);
		FUNC1(sc, 26, &sc->bbp26);
	} else if (sc->mac_rev < 0x0201 || sc->mac_rev < 0x0211)
		FUNC7(sc, 27, 0x03);

	FUNC4(sc, RT3070_OPT_14, &tmp);
	FUNC8(sc, RT3070_OPT_14, tmp | 1);

	if (sc->mac_ver == 0x3070 || sc->mac_ver == 0x3071) {
		FUNC6(sc, 17, &rf);
		rf &= ~RT3070_TX_LO1;
		if ((sc->mac_ver == 0x3070 ||
		     (sc->mac_ver == 0x3071 && sc->mac_rev >= 0x0211)) &&
		    !sc->ext_2ghz_lna)
			rf |= 0x20;	/* fix for long range Rx issue */
		mingain = (sc->mac_ver == 0x3070) ? 1 : 2;
		if (sc->txmixgain_2ghz >= mingain)
			rf = (rf & ~0x7) | sc->txmixgain_2ghz;
		FUNC7(sc, 17, rf);
	}

	if (sc->mac_ver == 0x3071) {
		FUNC6(sc, 1, &rf);
		rf &= ~(RT3070_RX0_PD | RT3070_TX0_PD);
		rf |= RT3070_RF_BLOCK | RT3070_RX1_PD | RT3070_TX1_PD;
		FUNC7(sc, 1, rf);

		FUNC6(sc, 15, &rf);
		FUNC7(sc, 15, rf & ~RT3070_TX_LO2);

		FUNC6(sc, 20, &rf);
		FUNC7(sc, 20, rf & ~RT3070_RX_LO1);

		FUNC6(sc, 21, &rf);
		FUNC7(sc, 21, rf & ~RT3070_RX_LO2);
	}

	if (sc->mac_ver == 0x3070 || sc->mac_ver == 0x3071) {
		/* fix Tx to Rx IQ glitch by raising RF voltage */
		FUNC6(sc, 27, &rf);
		rf &= ~0x77;
		if (sc->mac_rev < 0x0211)
			rf |= 0x03;
		FUNC7(sc, 27, rf);
	}
	return (0);
}
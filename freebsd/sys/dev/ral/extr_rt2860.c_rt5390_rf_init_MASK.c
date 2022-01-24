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
struct rt2860_softc {int mac_ver; int rf24_20mhz; int rf24_40mhz; int mac_rev; int ntxchains; int nrxchains; } ;
struct TYPE_4__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG1 ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG2 ; 
 int /*<<< orphan*/  RT3070_OPT_14 ; 
 int RT3593_RESCAL ; 
 int RT5390_MAC_IF_CTRL ; 
 int RT5390_RX_LO1 ; 
 int RT5390_RX_LO2 ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2860_softc*,int,int) ; 
 int FUNC6 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2860_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 TYPE_1__* rt5390_def_rf ; 
 TYPE_1__* rt5392_def_rf ; 

__attribute__((used)) static void
FUNC9(struct rt2860_softc *sc)
{
	uint8_t rf, bbp;
	int i;

	rf = FUNC6(sc, 2);
	/* Toggle RF R2 bit 7. */
	FUNC7(sc, 2, rf | RT3593_RESCAL);
	FUNC0(1000);
	FUNC7(sc, 2, rf & ~RT3593_RESCAL);

	/* Initialize RF registers to default value. */
	if (sc->mac_ver == 0x5392) {
		for (i = 0; i < FUNC3(rt5392_def_rf); i++) {
			FUNC7(sc, rt5392_def_rf[i].reg,
			    rt5392_def_rf[i].val);
		}
	} else {
		for (i = 0; i < FUNC3(rt5390_def_rf); i++) {
			FUNC7(sc, rt5390_def_rf[i].reg,
			    rt5390_def_rf[i].val);
		}
	}

	sc->rf24_20mhz = 0x1f;
	sc->rf24_40mhz = 0x2f;

	if (sc->mac_rev < 0x0211)
		FUNC7(sc, 27, 0x03);

	/* Set led open drain enable. */
	FUNC2(sc, RT3070_OPT_14, FUNC1(sc, RT3070_OPT_14) | 1);

	FUNC2(sc, RT2860_TX_SW_CFG1, 0);
	FUNC2(sc, RT2860_TX_SW_CFG2, 0);

	if (sc->mac_ver == 0x5390)
		FUNC8(sc, 0);

	/* Patch RSSI inaccurate issue. */
	FUNC5(sc, 79, 0x13);
	FUNC5(sc, 80, 0x05);
	FUNC5(sc, 81, 0x33);

	/* Enable DC filter. */
	if (sc->mac_rev >= 0x0211)
		FUNC5(sc, 103, 0xc0);

	bbp = FUNC4(sc, 138);
	if (sc->ntxchains == 1)
		bbp |= 0x20;	/* Turn off DAC1. */
	if (sc->nrxchains == 1)
		bbp &= ~0x02;	/* Turn off ADC1. */
	FUNC5(sc, 138, bbp);

	/* Enable RX LO1 and LO2. */
	FUNC7(sc, 38, FUNC6(sc, 38) & ~RT5390_RX_LO1);
	FUNC7(sc, 39, FUNC6(sc, 39) & ~RT5390_RX_LO2);

	/* Avoid data lost and CRC error. */
	FUNC5(sc, 4,
	    FUNC4(sc, 4) | RT5390_MAC_IF_CTRL);

	rf = FUNC6(sc, 30);
	rf = (rf & ~0x18) | 0x10;
	FUNC7(sc, 30, rf);
}
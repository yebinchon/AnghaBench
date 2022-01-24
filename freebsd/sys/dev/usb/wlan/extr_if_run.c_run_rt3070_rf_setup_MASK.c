#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct run_softc {int mac_ver; int mac_rev; int ntxchains; int nrxchains; int txmixgain_2ghz; TYPE_1__* rf; scalar_t__ patch_dac; } ;
struct TYPE_2__ {int reg; int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_TX_SW_CFG1 ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG2 ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct run_softc *sc)
{
	uint8_t bbp, rf;
	int i;

	if (sc->mac_ver == 0x3572) {
		/* enable DC filter */
		if (sc->mac_rev >= 0x0201)
			FUNC1(sc, 103, 0xc0);

		FUNC0(sc, 138, &bbp);
		if (sc->ntxchains == 1)
			bbp |= 0x20;	/* turn off DAC1 */
		if (sc->nrxchains == 1)
			bbp &= ~0x02;	/* turn off ADC1 */
		FUNC1(sc, 138, bbp);

		if (sc->mac_rev >= 0x0211) {
			/* improve power consumption */
			FUNC0(sc, 31, &bbp);
			FUNC1(sc, 31, bbp & ~0x03);
		}

		FUNC2(sc, 16, &rf);
		rf = (rf & ~0x07) | sc->txmixgain_2ghz;
		FUNC3(sc, 16, rf);

	} else if (sc->mac_ver == 0x3071) {
		if (sc->mac_rev >= 0x0211) {
			/* enable DC filter */
			FUNC1(sc, 103, 0xc0);

			/* improve power consumption */
			FUNC0(sc, 31, &bbp);
			FUNC1(sc, 31, bbp & ~0x03);
		}

		FUNC0(sc, 138, &bbp);
		if (sc->ntxchains == 1)
			bbp |= 0x20;	/* turn off DAC1 */
		if (sc->nrxchains == 1)
			bbp &= ~0x02;	/* turn off ADC1 */
		FUNC1(sc, 138, bbp);

		FUNC4(sc, RT2860_TX_SW_CFG1, 0);
		if (sc->mac_rev < 0x0211) {
			FUNC4(sc, RT2860_TX_SW_CFG2,
			    sc->patch_dac ? 0x2c : 0x0f);
		} else
			FUNC4(sc, RT2860_TX_SW_CFG2, 0);

	} else if (sc->mac_ver == 0x3070) {
		if (sc->mac_rev >= 0x0201) {
			/* enable DC filter */
			FUNC1(sc, 103, 0xc0);

			/* improve power consumption */
			FUNC0(sc, 31, &bbp);
			FUNC1(sc, 31, bbp & ~0x03);
		}

		if (sc->mac_rev < 0x0201) {
			FUNC4(sc, RT2860_TX_SW_CFG1, 0);
			FUNC4(sc, RT2860_TX_SW_CFG2, 0x2c);
		} else
			FUNC4(sc, RT2860_TX_SW_CFG2, 0);
	}

	/* initialize RF registers from ROM for >=RT3071*/
	if (sc->mac_ver >= 0x3071) {
		for (i = 0; i < 10; i++) {
			if (sc->rf[i].reg == 0 || sc->rf[i].reg == 0xff)
				continue;
			FUNC3(sc, sc->rf[i].reg, sc->rf[i].val);
		}
	}
}
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
struct run_softc {int mac_rev; int mac_ver; int ntxchains; int nrxchains; scalar_t__ patch_dac; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2860_TX_SW_CFG1 ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG2 ; 
 int RT5390_MAC_IF_CTRL ; 
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

		if (sc->mac_ver != 0x5592) {
			/* Improve power consumption. */
			FUNC0(sc, 31, &bbp);
			FUNC1(sc, 31, bbp & ~0x03);
		}
	}

	FUNC0(sc, 138, &bbp);
	if (sc->ntxchains == 1)
		bbp |= 0x20;	/* turn off DAC1 */
	if (sc->nrxchains == 1)
		bbp &= ~0x02;	/* turn off ADC1 */
	FUNC1(sc, 138, bbp);

	FUNC2(sc, 38, &rf);
	FUNC3(sc, 38, rf & ~RT5390_RX_LO1);

	FUNC2(sc, 39, &rf);
	FUNC3(sc, 39, rf & ~RT5390_RX_LO2);

	/* Avoid data lost and CRC error. */
	FUNC0(sc, 4, &bbp);
	FUNC1(sc, 4, bbp | RT5390_MAC_IF_CTRL);

	FUNC2(sc, 30, &rf);
	rf = (rf & ~0x18) | 0x10;
	FUNC3(sc, 30, rf);

	if (sc->mac_ver != 0x5592) {
		FUNC4(sc, RT2860_TX_SW_CFG1, 0);
		if (sc->mac_rev < 0x0211) {
			FUNC4(sc, RT2860_TX_SW_CFG2,
			    sc->patch_dac ? 0x2c : 0x0f);
		} else
			FUNC4(sc, RT2860_TX_SW_CFG2, 0);
	}
}
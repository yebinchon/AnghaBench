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
typedef  int uint32_t ;
struct rt2860_softc {int mac_ver; int mac_rev; scalar_t__ patch_dac; } ;

/* Variables and functions */
 int FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT3070_LDO_CFG0 ; 
 int RT3070_PLL_PD ; 
 int RT3070_RF_BLOCK ; 
 int RT3070_RX0_PD ; 
 int RT3070_RX1_PD ; 
 int RT3070_TX0_PD ; 
 int RT3070_TX1_PD ; 
 int RT3593_RESCAL ; 
 int RT3593_VCOCAL ; 
 int RT3593_VCO_IC ; 
 int RT5390_RX_CTB ; 
 int FUNC2 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct rt2860_softc *sc)
{
	uint32_t tmp;
	uint8_t rf;

	rf = FUNC2(sc, 1);
	rf |= RT3070_RF_BLOCK | RT3070_PLL_PD | RT3070_RX0_PD | 
	    RT3070_TX0_PD;
	if (sc->mac_ver == 0x5392)
		rf |= RT3070_RX1_PD | RT3070_TX1_PD;
	FUNC3(sc, 1, rf);

	rf = FUNC2(sc, 6);
	rf |= RT3593_VCO_IC | RT3593_VCOCAL;
	if (sc->mac_ver == 0x5390)
		rf &= ~RT3593_VCO_IC;
	FUNC3(sc, 6, rf);

	FUNC3(sc, 2, FUNC2(sc, 2) | RT3593_RESCAL);

	rf = FUNC2(sc, 22);
	rf = (rf & ~0xe0) | 0x20;
	FUNC3(sc, 22, rf);

	FUNC3(sc, 42, FUNC2(sc, 42) | RT5390_RX_CTB);
	FUNC3(sc, 20, FUNC2(sc, 20) & ~0x77);
	FUNC3(sc, 3, FUNC2(sc, 3) | RT3593_VCOCAL);

	if (sc->patch_dac && sc->mac_rev < 0x0211) {
		tmp = FUNC0(sc, RT3070_LDO_CFG0);
		tmp = (tmp & ~0x1f000000) | 0x0d000000;
		FUNC1(sc, RT3070_LDO_CFG0, tmp);
	}
}
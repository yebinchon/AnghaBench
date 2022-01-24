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
 int RT3070_RF_BLOCK ; 
 int RT3070_RX_CTB ; 
 int RT3593_CP_IC_MASK ; 
 int RT3593_CP_IC_SHIFT ; 
 int RT3593_LDO_PLL_VC_MASK ; 
 int RT3593_LDO_RF_VC_MASK ; 
 int RT3593_RESCAL ; 
 int RT3593_RX_CTB ; 
 int RT3593_VCO ; 
 int RT3593_VCOCAL ; 
 int RT3593_VCO_IC ; 
 int FUNC2 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct rt2860_softc *sc)
{
	uint32_t tmp;
	uint8_t rf;

	if (sc->mac_ver == 0x3593) {
		/* enable VCO */
		rf = FUNC2(sc, 1);
		FUNC3(sc, 1, rf | RT3593_VCO);

		/* initiate VCO calibration */
		rf = FUNC2(sc, 3);
		FUNC3(sc, 3, rf | RT3593_VCOCAL);

		/* enable VCO bias current control */
		rf = FUNC2(sc, 6);
		FUNC3(sc, 6, rf | RT3593_VCO_IC);

		/* initiate res calibration */
		rf = FUNC2(sc, 2);
		FUNC3(sc, 2, rf | RT3593_RESCAL);

		/* set reference current control to 0.33 mA */
		rf = FUNC2(sc, 22);
		rf &= ~RT3593_CP_IC_MASK;
		rf |= 1 << RT3593_CP_IC_SHIFT;
		FUNC3(sc, 22, rf);

		/* enable RX CTB */
		rf = FUNC2(sc, 46);
		FUNC3(sc, 46, rf | RT3593_RX_CTB);

		rf = FUNC2(sc, 20);
		rf &= ~(RT3593_LDO_RF_VC_MASK | RT3593_LDO_PLL_VC_MASK);
		FUNC3(sc, 20, rf);
	} else {
		/* enable RF block */
		rf = FUNC2(sc, 1);
		FUNC3(sc, 1, rf | RT3070_RF_BLOCK);

		/* enable VCO bias current control */
		rf = FUNC2(sc, 7);
		FUNC3(sc, 7, rf | 0x30);

		rf = FUNC2(sc, 9);
		FUNC3(sc, 9, rf | 0x0e);

		/* enable RX CTB */
		rf = FUNC2(sc, 21);
		FUNC3(sc, 21, rf | RT3070_RX_CTB);

		/* fix Tx to Rx IQ glitch by raising RF voltage */
		rf = FUNC2(sc, 27);
		rf &= ~0x77;
		if (sc->mac_rev < 0x0211)
			rf |= 0x03;
		FUNC3(sc, 27, rf);
	}
	if (sc->patch_dac && sc->mac_rev < 0x0211) {
		tmp = FUNC0(sc, RT3070_LDO_CFG0);
		tmp = (tmp & ~0x1f000000) | 0x0d000000;
		FUNC1(sc, RT3070_LDO_CFG0, tmp);
	}
}
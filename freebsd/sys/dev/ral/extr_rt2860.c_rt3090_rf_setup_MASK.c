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
struct rt2860_softc {int mac_rev; int mac_ver; TYPE_1__* rf; scalar_t__ patch_dac; } ;
struct TYPE_2__ {int reg; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2860_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG1 ; 
 int /*<<< orphan*/  RT2860_TX_SW_CFG2 ; 
 int FUNC1 (struct rt2860_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2860_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2860_softc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct rt2860_softc *sc)
{
	uint8_t bbp;
	int i;

	if (sc->mac_rev >= 0x0211) {
		/* enable DC filter */
		FUNC2(sc, 103, 0xc0);

		/* improve power consumption */
		bbp = FUNC1(sc, 31);
		FUNC2(sc, 31, bbp & ~0x03);
	}

	FUNC0(sc, RT2860_TX_SW_CFG1, 0);
	if (sc->mac_rev < 0x0211) {
		FUNC0(sc, RT2860_TX_SW_CFG2,
		    sc->patch_dac ? 0x2c : 0x0f);
	} else
		FUNC0(sc, RT2860_TX_SW_CFG2, 0);

	/* initialize RF registers from ROM */
	if (sc->mac_ver < 0x5390) {
		for (i = 0; i < 10; i++) {
			if (sc->rf[i].reg == 0 || sc->rf[i].reg == 0xff)
				continue;
			FUNC3(sc, sc->rf[i].reg, sc->rf[i].val);
		}
	}
}
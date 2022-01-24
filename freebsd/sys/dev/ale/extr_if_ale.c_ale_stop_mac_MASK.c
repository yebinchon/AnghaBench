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
typedef  int uint32_t ;
struct ale_softc {int /*<<< orphan*/  ale_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALE_IDLE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  ALE_MAC_CFG ; 
 int ALE_TIMEOUT ; 
 int FUNC1 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MAC_CFG_RX_ENB ; 
 int MAC_CFG_TX_ENB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct ale_softc *sc)
{
	uint32_t reg;
	int i;

	FUNC0(sc);

	reg = FUNC1(sc, ALE_MAC_CFG);
	if ((reg & (MAC_CFG_TX_ENB | MAC_CFG_RX_ENB)) != 0) {
		reg &= ~(MAC_CFG_TX_ENB | MAC_CFG_RX_ENB);
		FUNC2(sc, ALE_MAC_CFG, reg);
	}

	for (i = ALE_TIMEOUT; i > 0; i--) {
		reg = FUNC1(sc, ALE_IDLE_STATUS);
		if (reg == 0)
			break;
		FUNC3(10);
	}
	if (i == 0)
		FUNC4(sc->ale_dev,
		    "could not disable Tx/Rx MAC(0x%08x)!\n", reg);
}
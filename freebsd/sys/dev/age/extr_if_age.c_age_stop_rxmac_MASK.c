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
struct age_softc {int /*<<< orphan*/  age_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGE_DMA_CFG ; 
 int /*<<< orphan*/  AGE_IDLE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_MAC_CFG ; 
 int AGE_RESET_TIMEOUT ; 
 int FUNC1 (struct age_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int DMA_CFG_WR_ENB ; 
 int IDLE_STATUS_DMAWR ; 
 int IDLE_STATUS_RXMAC ; 
 int MAC_CFG_RX_ENB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct age_softc *sc)
{
	uint32_t reg;
	int i;

	FUNC0(sc);

	reg = FUNC1(sc, AGE_MAC_CFG);
	if ((reg & MAC_CFG_RX_ENB) != 0) {
		reg &= ~MAC_CFG_RX_ENB;
		FUNC2(sc, AGE_MAC_CFG, reg);
	}
	/* Stop Rx DMA engine. */
	reg = FUNC1(sc, AGE_DMA_CFG);
	if ((reg & DMA_CFG_WR_ENB) != 0) {
		reg &= ~DMA_CFG_WR_ENB;
		FUNC2(sc, AGE_DMA_CFG, reg);
	}
	for (i = AGE_RESET_TIMEOUT; i > 0; i--) {
		if ((FUNC1(sc, AGE_IDLE_STATUS) &
		    (IDLE_STATUS_RXMAC | IDLE_STATUS_DMAWR)) == 0)
			break;
		FUNC3(10);
	}
	if (i == 0)
		FUNC4(sc->age_dev, "stopping RxMAC timeout!\n");
}
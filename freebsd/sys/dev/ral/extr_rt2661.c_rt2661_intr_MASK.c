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
struct rt2661_softc {int sc_flags; int /*<<< orphan*/ * txq; int /*<<< orphan*/  mgtq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2661_softc*) ; 
 int FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int RAL_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2661_INT_MASK_CSR ; 
 int /*<<< orphan*/  RT2661_INT_SOURCE_CSR ; 
 int RT2661_MCU_BEACON_EXPIRE ; 
 int RT2661_MCU_CMD_DONE ; 
 int /*<<< orphan*/  RT2661_MCU_INT_MASK_CSR ; 
 int /*<<< orphan*/  RT2661_MCU_INT_SOURCE_CSR ; 
 int RT2661_MCU_WAKEUP ; 
 int RT2661_MGT_DONE ; 
 int RT2661_RX_DONE ; 
 int RT2661_TX0_DMA_DONE ; 
 int RT2661_TX1_DMA_DONE ; 
 int RT2661_TX2_DMA_DONE ; 
 int RT2661_TX3_DMA_DONE ; 
 int RT2661_TX_DONE ; 
 int /*<<< orphan*/  FUNC4 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2661_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2661_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2661_softc*) ; 

void
FUNC10(void *arg)
{
	struct rt2661_softc *sc = arg;
	uint32_t r1, r2;

	FUNC0(sc);

	/* disable MAC and MCU interrupts */
	FUNC3(sc, RT2661_INT_MASK_CSR, 0xffffff7f);
	FUNC3(sc, RT2661_MCU_INT_MASK_CSR, 0xffffffff);

	/* don't re-enable interrupts if we're shutting down */
	if (!(sc->sc_flags & RAL_RUNNING)) {
		FUNC2(sc);
		return;
	}

	r1 = FUNC1(sc, RT2661_INT_SOURCE_CSR);
	FUNC3(sc, RT2661_INT_SOURCE_CSR, r1);

	r2 = FUNC1(sc, RT2661_MCU_INT_SOURCE_CSR);
	FUNC3(sc, RT2661_MCU_INT_SOURCE_CSR, r2);

	if (r1 & RT2661_MGT_DONE)
		FUNC8(sc, &sc->mgtq);

	if (r1 & RT2661_RX_DONE)
		FUNC7(sc);

	if (r1 & RT2661_TX0_DMA_DONE)
		FUNC8(sc, &sc->txq[0]);

	if (r1 & RT2661_TX1_DMA_DONE)
		FUNC8(sc, &sc->txq[1]);

	if (r1 & RT2661_TX2_DMA_DONE)
		FUNC8(sc, &sc->txq[2]);

	if (r1 & RT2661_TX3_DMA_DONE)
		FUNC8(sc, &sc->txq[3]);

	if (r1 & RT2661_TX_DONE)
		FUNC9(sc);

	if (r2 & RT2661_MCU_CMD_DONE)
		FUNC5(sc);

	if (r2 & RT2661_MCU_BEACON_EXPIRE)
		FUNC4(sc);

	if (r2 & RT2661_MCU_WAKEUP)
		FUNC6(sc);

	/* re-enable MAC and MCU interrupts */
	FUNC3(sc, RT2661_INT_MASK_CSR, 0x0000ff10);
	FUNC3(sc, RT2661_MCU_INT_MASK_CSR, 0);

	FUNC2(sc);
}
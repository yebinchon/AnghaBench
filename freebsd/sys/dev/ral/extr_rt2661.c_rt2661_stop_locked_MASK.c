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
struct rt2661_softc {int sc_flags; int /*<<< orphan*/  rxq; int /*<<< orphan*/  mgtq; int /*<<< orphan*/ * txq; scalar_t__ sc_tx_timer; int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int volatile RAL_INPUT_RUNNING ; 
 int FUNC0 (struct rt2661_softc*,int /*<<< orphan*/ ) ; 
 int RAL_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct rt2661_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2661_DISABLE_RX ; 
 int /*<<< orphan*/  RT2661_INT_MASK_CSR ; 
 int /*<<< orphan*/  RT2661_INT_SOURCE_CSR ; 
 int /*<<< orphan*/  RT2661_MAC_CSR1 ; 
 int /*<<< orphan*/  RT2661_MCU_INT_MASK_CSR ; 
 int /*<<< orphan*/  RT2661_MCU_INT_SOURCE_CSR ; 
 int /*<<< orphan*/  RT2661_TXRX_CSR0 ; 
 int /*<<< orphan*/  RT2661_TX_CNTL_CSR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct rt2661_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2661_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2661_softc*,int /*<<< orphan*/ *) ; 

void
FUNC6(struct rt2661_softc *sc)
{
	volatile int *flags = &sc->sc_flags;
	uint32_t tmp;

	while (*flags & RAL_INPUT_RUNNING)
		FUNC3(sc, &sc->sc_mtx, 0, "ralrunning", hz/10);

	FUNC2(&sc->watchdog_ch);
	sc->sc_tx_timer = 0;

	if (sc->sc_flags & RAL_RUNNING) {
		sc->sc_flags &= ~RAL_RUNNING;

		/* abort Tx (for all 5 Tx rings) */
		FUNC1(sc, RT2661_TX_CNTL_CSR, 0x1f << 16);
		
		/* disable Rx (value remains after reset!) */
		tmp = FUNC0(sc, RT2661_TXRX_CSR0);
		FUNC1(sc, RT2661_TXRX_CSR0, tmp | RT2661_DISABLE_RX);
		
		/* reset ASIC */
		FUNC1(sc, RT2661_MAC_CSR1, 3);
		FUNC1(sc, RT2661_MAC_CSR1, 0);
		
		/* disable interrupts */
		FUNC1(sc, RT2661_INT_MASK_CSR, 0xffffffff);
		FUNC1(sc, RT2661_MCU_INT_MASK_CSR, 0xffffffff);
		
		/* clear any pending interrupt */
		FUNC1(sc, RT2661_INT_SOURCE_CSR, 0xffffffff);
		FUNC1(sc, RT2661_MCU_INT_SOURCE_CSR, 0xffffffff);
		
		/* reset Tx and Rx rings */
		FUNC5(sc, &sc->txq[0]);
		FUNC5(sc, &sc->txq[1]);
		FUNC5(sc, &sc->txq[2]);
		FUNC5(sc, &sc->txq[3]);
		FUNC5(sc, &sc->mgtq);
		FUNC4(sc, &sc->rxq);
	}
}
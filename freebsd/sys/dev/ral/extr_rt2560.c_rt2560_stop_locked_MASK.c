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
struct rt2560_softc {int sc_flags; int /*<<< orphan*/  rxq; int /*<<< orphan*/  bcnq; int /*<<< orphan*/  prioq; int /*<<< orphan*/  atimq; int /*<<< orphan*/  txq; scalar_t__ sc_tx_timer; int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2560_ABORT_TX ; 
 int /*<<< orphan*/  RT2560_CSR1 ; 
 int /*<<< orphan*/  RT2560_CSR8 ; 
 int RT2560_DISABLE_RX ; 
 int volatile RT2560_F_INPUT_RUNNING ; 
 int RT2560_F_RUNNING ; 
 int RT2560_RESET_ASIC ; 
 int /*<<< orphan*/  RT2560_RXCSR0 ; 
 int /*<<< orphan*/  RT2560_TXCSR0 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct rt2560_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2560_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2560_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct rt2560_softc *sc)
{
	volatile int *flags = &sc->sc_flags;

	FUNC0(sc);

	while (*flags & RT2560_F_INPUT_RUNNING)
		FUNC3(sc, &sc->sc_mtx, 0, "ralrunning", hz/10);

	FUNC2(&sc->watchdog_ch);
	sc->sc_tx_timer = 0;

	if (sc->sc_flags & RT2560_F_RUNNING) {
		sc->sc_flags &= ~RT2560_F_RUNNING;

		/* abort Tx */
		FUNC1(sc, RT2560_TXCSR0, RT2560_ABORT_TX);
		
		/* disable Rx */
		FUNC1(sc, RT2560_RXCSR0, RT2560_DISABLE_RX);

		/* reset ASIC (imply reset BBP) */
		FUNC1(sc, RT2560_CSR1, RT2560_RESET_ASIC);
		FUNC1(sc, RT2560_CSR1, 0);

		/* disable interrupts */
		FUNC1(sc, RT2560_CSR8, 0xffffffff);
		
		/* reset Tx and Rx rings */
		FUNC5(sc, &sc->txq);
		FUNC5(sc, &sc->atimq);
		FUNC5(sc, &sc->prioq);
		FUNC5(sc, &sc->bcnq);
		FUNC4(sc, &sc->rxq);
	}
}
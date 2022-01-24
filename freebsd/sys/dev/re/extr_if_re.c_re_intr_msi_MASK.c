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
typedef  int uint16_t ;
struct rl_softc {int rl_int_rx_act; scalar_t__ rl_int_rx_mod; int rl_flags; int /*<<< orphan*/  rl_txstart; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int RL_FLAG_PCIE ; 
 int /*<<< orphan*/  RL_IMR ; 
 int RL_INTRS_CPLUS ; 
 int /*<<< orphan*/  RL_ISR ; 
 int RL_ISR_FIFO_OFLOW ; 
 int RL_ISR_RX_ERR ; 
 int RL_ISR_RX_OK ; 
 int RL_ISR_RX_OVERRUN ; 
 int RL_ISR_SYSTEM_ERR ; 
 int RL_ISR_TIMEOUT_EXPIRED ; 
 int RL_ISR_TX_DESC_UNAVAIL ; 
 int RL_ISR_TX_ERR ; 
 int RL_ISR_TX_OK ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 
 int /*<<< orphan*/  RL_TIMERCNT ; 
 int /*<<< orphan*/  RL_TXSTART_START ; 
 int /*<<< orphan*/  FUNC6 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct rl_softc*) ; 

__attribute__((used)) static void
FUNC11(void *xsc)
{
	struct rl_softc		*sc;
	struct ifnet		*ifp;
	uint16_t		intrs, status;

	sc = xsc;
	FUNC5(sc);

	ifp = sc->rl_ifp;
#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING) {
		RL_UNLOCK(sc);
		return;
	}
#endif
	/* Disable interrupts. */
	FUNC2(sc, RL_IMR, 0);
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC6(sc);
		return;
	}

	intrs = RL_INTRS_CPLUS;
	status = FUNC0(sc, RL_ISR);
        FUNC2(sc, RL_ISR, status);
	if (sc->rl_int_rx_act > 0) {
		intrs &= ~(RL_ISR_RX_OK | RL_ISR_RX_ERR | RL_ISR_FIFO_OFLOW |
		    RL_ISR_RX_OVERRUN);
		status &= ~(RL_ISR_RX_OK | RL_ISR_RX_ERR | RL_ISR_FIFO_OFLOW |
		    RL_ISR_RX_OVERRUN);
	}

	if (status & (RL_ISR_TIMEOUT_EXPIRED | RL_ISR_RX_OK | RL_ISR_RX_ERR |
	    RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN)) {
		FUNC8(sc, NULL);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
			if (sc->rl_int_rx_mod != 0 &&
			    (status & (RL_ISR_RX_OK | RL_ISR_RX_ERR |
			    RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN)) != 0) {
				/* Rearm one-shot timer. */
				FUNC3(sc, RL_TIMERCNT, 1);
				intrs &= ~(RL_ISR_RX_OK | RL_ISR_RX_ERR |
				    RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN);
				sc->rl_int_rx_act = 1;
			} else {
				intrs |= RL_ISR_RX_OK | RL_ISR_RX_ERR |
				    RL_ISR_FIFO_OFLOW | RL_ISR_RX_OVERRUN;
				sc->rl_int_rx_act = 0;
			}
		}
	}

	/*
	 * Some chips will ignore a second TX request issued
	 * while an existing transmission is in progress. If
	 * the transmitter goes idle but there are still
	 * packets waiting to be sent, we need to restart the
	 * channel here to flush them out. This only seems to
	 * be required with the PCIe devices.
	 */
	if ((status & (RL_ISR_TX_OK | RL_ISR_TX_DESC_UNAVAIL)) &&
	    (sc->rl_flags & RL_FLAG_PCIE))
		FUNC1(sc, sc->rl_txstart, RL_TXSTART_START);
	if (status & (RL_ISR_TX_OK | RL_ISR_TX_ERR | RL_ISR_TX_DESC_UNAVAIL))
		FUNC10(sc);

	if (status & RL_ISR_SYSTEM_ERR) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC7(sc);
	}

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		if (!FUNC4(&ifp->if_snd))
			FUNC9(ifp);
		FUNC2(sc, RL_IMR, intrs);
	}
	FUNC6(sc);
}
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
typedef  int u_int16_t ;
struct rl_softc {int rl_flags; int /*<<< orphan*/  rl_inttask; int /*<<< orphan*/  rl_txstart; scalar_t__ suspended; struct ifnet* rl_ifp; } ;
struct ifnet {int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct rl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int RL_FLAG_PCIE ; 
 int /*<<< orphan*/  RL_IMR ; 
 int RL_INTRS_CPLUS ; 
 int /*<<< orphan*/  RL_ISR ; 
 int RL_ISR_FIFO_OFLOW ; 
 int RL_ISR_RX_ERR ; 
 int RL_ISR_RX_OK ; 
 int RL_ISR_SYSTEM_ERR ; 
 int RL_ISR_TIMEOUT_EXPIRED ; 
 int RL_ISR_TX_DESC_UNAVAIL ; 
 int RL_ISR_TX_ERR ; 
 int RL_ISR_TX_OK ; 
 int /*<<< orphan*/  FUNC4 (struct rl_softc*) ; 
 int /*<<< orphan*/  RL_TXSTART_START ; 
 int /*<<< orphan*/  FUNC5 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rl_softc*) ; 
 int FUNC7 (struct rl_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_fast ; 

__attribute__((used)) static void
FUNC11(void *arg, int npending)
{
	struct rl_softc		*sc;
	struct ifnet		*ifp;
	u_int16_t		status;
	int			rval = 0;

	sc = arg;
	ifp = sc->rl_ifp;

	FUNC4(sc);

	status = FUNC0(sc, RL_ISR);
        FUNC2(sc, RL_ISR, status);

	if (sc->suspended ||
	    (ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC5(sc);
		return;
	}

#ifdef DEVICE_POLLING
	if  (ifp->if_capenable & IFCAP_POLLING) {
		RL_UNLOCK(sc);
		return;
	}
#endif

	if (status & (RL_ISR_RX_OK|RL_ISR_RX_ERR|RL_ISR_FIFO_OFLOW))
		rval = FUNC7(sc, NULL);

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
	if (status & (
#ifdef RE_TX_MODERATION
	    RL_ISR_TIMEOUT_EXPIRED|
#else
	    RL_ISR_TX_OK|
#endif
	    RL_ISR_TX_ERR|RL_ISR_TX_DESC_UNAVAIL))
		FUNC9(sc);

	if (status & RL_ISR_SYSTEM_ERR) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC6(sc);
	}

	if (!FUNC3(&ifp->if_snd))
		FUNC8(ifp);

	FUNC5(sc);

        if ((FUNC0(sc, RL_ISR) & RL_INTRS_CPLUS) || rval) {
		FUNC10(taskqueue_fast, &sc->rl_inttask);
		return;
	}

	FUNC2(sc, RL_IMR, RL_INTRS_CPLUS);
}
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
struct sis_softc {struct ifnet* sis_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIS_CSR ; 
 int /*<<< orphan*/  SIS_CSR_RX_ENABLE ; 
 int /*<<< orphan*/  SIS_IER ; 
 int SIS_INTRS ; 
 int /*<<< orphan*/  SIS_ISR ; 
 int SIS_ISR_RX_DESC_OK ; 
 int SIS_ISR_RX_ERR ; 
 int SIS_ISR_RX_IDLE ; 
 int SIS_ISR_RX_OFLOW ; 
 int SIS_ISR_RX_OK ; 
 int SIS_ISR_SYSERR ; 
 int SIS_ISR_TX_DESC_OK ; 
 int SIS_ISR_TX_ERR ; 
 int SIS_ISR_TX_IDLE ; 
 int SIS_ISR_TX_OK ; 
 int /*<<< orphan*/  FUNC3 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct sis_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct sis_softc*) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct sis_softc	*sc;
	struct ifnet		*ifp;
	uint32_t		status;

	sc = arg;
	ifp = sc->sis_ifp;

	FUNC3(sc);
#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING) {
		SIS_UNLOCK(sc);
		return;
	}
#endif

	/* Reading the ISR register clears all interrupts. */
	status = FUNC0(sc, SIS_ISR);
	if ((status & SIS_INTRS) == 0) {
		/* Not ours. */
		FUNC5(sc);
		return;
	}

	/* Disable interrupts. */
	FUNC1(sc, SIS_IER, 0);

	for (;(status & SIS_INTRS) != 0;) {
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
			break;
		if (status &
		    (SIS_ISR_TX_DESC_OK | SIS_ISR_TX_ERR |
		    SIS_ISR_TX_OK | SIS_ISR_TX_IDLE) )
			FUNC10(sc);

		if (status & (SIS_ISR_RX_DESC_OK | SIS_ISR_RX_OK |
		    SIS_ISR_RX_ERR | SIS_ISR_RX_IDLE))
			FUNC8(sc);

		if (status & SIS_ISR_RX_OFLOW)
			FUNC6(ifp, IFCOUNTER_IERRORS, 1);

		if (status & (SIS_ISR_RX_IDLE))
			FUNC4(sc, SIS_CSR, SIS_CSR_RX_ENABLE);

		if (status & SIS_ISR_SYSERR) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC7(sc);
			FUNC5(sc);
			return;
		}
		status = FUNC0(sc, SIS_ISR);
	}

	if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
		/* Re-enable interrupts. */
		FUNC1(sc, SIS_IER, 1);

		if (!FUNC2(&ifp->if_snd))
			FUNC9(ifp);
	}

	FUNC5(sc);
}
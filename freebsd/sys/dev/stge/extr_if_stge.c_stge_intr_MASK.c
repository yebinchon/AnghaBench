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
struct stge_softc {int sc_IntEnable; int /*<<< orphan*/  sc_dev; scalar_t__ sc_suspended; struct ifnet* sc_ifp; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  if_snd; int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAC_RxDMAPollNow ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int IS_HostError ; 
 int IS_InterruptStatus ; 
 int IS_RFDListEnd ; 
 int IS_RxDMAComplete ; 
 int IS_TxComplete ; 
 int IS_TxDMAComplete ; 
 int /*<<< orphan*/  STGE_DMACtrl ; 
 int /*<<< orphan*/  STGE_IntEnable ; 
 int /*<<< orphan*/  STGE_IntStatus ; 
 int /*<<< orphan*/  STGE_IntStatusAck ; 
 int /*<<< orphan*/  FUNC4 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int FUNC10 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct stge_softc*) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct stge_softc *sc;
	struct ifnet *ifp;
	int reinit;
	uint16_t status;

	sc = (struct stge_softc *)arg;
	ifp = sc->sc_ifp;

	FUNC4(sc);

#ifdef DEVICE_POLLING
	if ((ifp->if_capenable & IFCAP_POLLING) != 0)
		goto done_locked;
#endif
	status = FUNC0(sc, STGE_IntStatus);
	if (sc->sc_suspended || (status & IS_InterruptStatus) == 0)
		goto done_locked;

	/* Disable interrupts. */
	for (reinit = 0;;) {
		status = FUNC0(sc, STGE_IntStatusAck);
		status &= sc->sc_IntEnable;
		if (status == 0)
			break;
		/* Host interface errors. */
		if ((status & IS_HostError) != 0) {
			FUNC6(sc->sc_dev,
			    "Host interface error, resetting...\n");
			reinit = 1;
			goto force_init;
		}

		/* Receive interrupts. */
		if ((status & IS_RxDMAComplete) != 0) {
			FUNC8(sc);
			if ((status & IS_RFDListEnd) != 0)
				FUNC2(sc, STGE_DMACtrl,
				    DMAC_RxDMAPollNow);
		}

		/* Transmit interrupts. */
		if ((status & (IS_TxDMAComplete | IS_TxComplete)) != 0)
			FUNC11(sc);

		/* Transmission errors.*/
		if ((status & IS_TxComplete) != 0) {
			if ((reinit = FUNC10(sc)) != 0)
				break;
		}
	}

force_init:
	if (reinit != 0) {
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC7(sc);
	}

	/* Re-enable interrupts. */
	FUNC1(sc, STGE_IntEnable, sc->sc_IntEnable);

	/* Try to get more packets going. */
	if (!FUNC3(&ifp->if_snd))
		FUNC9(ifp);

done_locked:
	FUNC5(sc);
}
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
struct ste_softc {int ste_int_rx_act; scalar_t__ ste_int_rx_mod; struct ifnet* ste_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STE_COUNTDOWN ; 
 int /*<<< orphan*/  STE_IMR ; 
 int STE_IMR_RX_DMADONE ; 
 int STE_INTRS ; 
 int /*<<< orphan*/  STE_ISR_ACK ; 
 int STE_ISR_HOSTERR ; 
 int STE_ISR_RX_DMADONE ; 
 int STE_ISR_SOFTINTR ; 
 int STE_ISR_STATS_OFLOW ; 
 int STE_ISR_TX_DMADONE ; 
 int STE_ISR_TX_DONE ; 
 int /*<<< orphan*/  FUNC3 (struct ste_softc*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ste_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ste_softc*) ; 

__attribute__((used)) static void
FUNC12(void *xsc)
{
	struct ste_softc *sc;
	struct ifnet *ifp;
	uint16_t intrs, status;

	sc = xsc;
	FUNC3(sc);
	ifp = sc->ste_ifp;

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING) {
		STE_UNLOCK(sc);
		return;
	}
#endif
	/* Reading STE_ISR_ACK clears STE_IMR register. */
	status = FUNC0(sc, STE_ISR_ACK);
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
		FUNC5(sc);
		return;
	}

	intrs = STE_INTRS;
	if (status == 0xFFFF || (status & intrs) == 0)
		goto done;

	if (sc->ste_int_rx_act > 0) {
		status &= ~STE_ISR_RX_DMADONE;
		intrs &= ~STE_IMR_RX_DMADONE;
	}

	if ((status & (STE_ISR_SOFTINTR | STE_ISR_RX_DMADONE)) != 0) {
		FUNC7(sc, -1);
		/*
		 * The controller has no ability to Rx interrupt
		 * moderation feature. Receiving 64 bytes frames
		 * from wire generates too many interrupts which in
		 * turn make system useless to process other useful
		 * things. Fortunately ST201 supports single shot
		 * timer so use the timer to implement Rx interrupt
		 * moderation in driver. This adds more register
		 * access but it greatly reduces number of Rx
		 * interrupts under high network load.
		 */
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
		    (sc->ste_int_rx_mod != 0)) {
			if ((status & STE_ISR_RX_DMADONE) != 0) {
				FUNC1(sc, STE_COUNTDOWN,
				    FUNC4(sc->ste_int_rx_mod));
				intrs &= ~STE_IMR_RX_DMADONE;
				sc->ste_int_rx_act = 1;
			} else {
				intrs |= STE_IMR_RX_DMADONE;
				sc->ste_int_rx_act = 0;
			}
		}
	}
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		if ((status & STE_ISR_TX_DMADONE) != 0)
			FUNC11(sc);
		if ((status & STE_ISR_TX_DONE) != 0)
			FUNC10(sc);
		if ((status & STE_ISR_STATS_OFLOW) != 0)
			FUNC9(sc);
		if ((status & STE_ISR_HOSTERR) != 0) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(sc);
			FUNC5(sc);
			return;
		}
		if (!FUNC2(&ifp->if_snd))
			FUNC8(ifp);
done:
		/* Re-enable interrupts */
		FUNC1(sc, STE_IMR, intrs);
	}
	FUNC5(sc);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;
struct TYPE_2__ {scalar_t__ dc_tx_cnt; } ;
struct dc_softc {TYPE_1__ dc_cdata; struct ifnet* dc_ifp; scalar_t__ suspended; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_FRAMESDISCARDED ; 
 int /*<<< orphan*/  DC_IMR ; 
 int DC_INTRS ; 
 int /*<<< orphan*/  DC_ISR ; 
 int DC_ISR_BUS_ERR ; 
 int DC_ISR_RX_NOBUF ; 
 int DC_ISR_RX_OK ; 
 int DC_ISR_RX_WATDOGTIMEO ; 
 int DC_ISR_TX_IDLE ; 
 int DC_ISR_TX_NOBUF ; 
 int DC_ISR_TX_OK ; 
 int DC_ISR_TX_UNDERRUN ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int /*<<< orphan*/  DC_NETCFG_TX_ON ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_TXSTART ; 
 int /*<<< orphan*/  FUNC4 (struct dc_softc*) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_softc*) ; 
 scalar_t__ FUNC7 (struct dc_softc*) ; 
 scalar_t__ FUNC8 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct dc_softc *sc;
	struct ifnet *ifp;
	uint32_t r, status;
	int n;

	sc = arg;

	if (sc->suspended)
		return;

	FUNC2(sc);
	status = FUNC0(sc, DC_ISR);
	if (status == 0xFFFFFFFF || (status & DC_INTRS) == 0) {
		FUNC4(sc);
		return;
	}
	ifp = sc->dc_ifp;
#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING) {
		DC_UNLOCK(sc);
		return;
	}
#endif
	/* Disable interrupts. */
	FUNC1(sc, DC_IMR, 0x00000000);

	for (n = 16; n > 0; n--) {
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
			break;
		/* Ack interrupts. */
		FUNC1(sc, DC_ISR, status);

		if (status & DC_ISR_RX_OK) {
			if (FUNC8(sc) == 0) {
				while (FUNC7(sc))
					FUNC8(sc);
			}
		}

		if (status & (DC_ISR_TX_OK | DC_ISR_TX_NOBUF))
			FUNC11(sc);

		if (status & DC_ISR_TX_IDLE) {
			FUNC11(sc);
			if (sc->dc_cdata.dc_tx_cnt) {
				FUNC3(sc, DC_NETCFG, DC_NETCFG_TX_ON);
				FUNC1(sc, DC_TXSTART, 0xFFFFFFFF);
			}
		}

		if (status & DC_ISR_TX_UNDERRUN)
			FUNC10(sc);

		if ((status & DC_ISR_RX_WATDOGTIMEO)
		    || (status & DC_ISR_RX_NOBUF)) {
			r = FUNC0(sc, DC_FRAMESDISCARDED);
			FUNC12(ifp, IFCOUNTER_IERRORS, (r & 0xffff) + ((r >> 17) & 0x7ff));
			if (FUNC8(sc) == 0) {
				while (FUNC7(sc))
					FUNC8(sc);
			}
		}

		if (!FUNC5(&ifp->if_snd))
			FUNC9(ifp);

		if (status & DC_ISR_BUS_ERR) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(sc);
			FUNC4(sc);
			return;
		}
		status = FUNC0(sc, DC_ISR);
		if (status == 0xFFFFFFFF || (status & DC_INTRS) == 0)
			break;
	}

	/* Re-enable interrupts. */
	if (ifp->if_drv_flags & IFF_DRV_RUNNING)
		FUNC1(sc, DC_IMR, DC_INTRS);

	FUNC4(sc);
}
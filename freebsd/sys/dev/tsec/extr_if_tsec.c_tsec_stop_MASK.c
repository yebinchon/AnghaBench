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
struct tsec_softc {size_t tx_idx_tail; size_t tx_idx_head; TYPE_1__* tx_bufmap; int /*<<< orphan*/  tsec_tx_mtag; scalar_t__ tsec_watchdog; int /*<<< orphan*/  tsec_callout; struct ifnet* tsec_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  mbuf; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct tsec_softc*) ; 
 int TSEC_MACCFG1_RX_EN ; 
 int TSEC_MACCFG1_TX_EN ; 
 int FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_MACCFG1 ; 
 int TSEC_TX_NUM_DESC ; 
 int /*<<< orphan*/  FUNC3 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tsec_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct tsec_softc *sc)
{
	struct ifnet *ifp;
	uint32_t tmpval;

	FUNC1(sc);

	ifp = sc->tsec_ifp;

	/* Disable interface and watchdog timer */
	FUNC6(&sc->tsec_callout);
	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
	sc->tsec_watchdog = 0;

	/* Disable all interrupts and stop DMA */
	FUNC9(sc, 0);
	FUNC8(sc, 0);

	/* Remove pending data from TX queue */
	while (sc->tx_idx_tail != sc->tx_idx_head) {
		FUNC4(sc->tsec_tx_mtag,
		    sc->tx_bufmap[sc->tx_idx_tail].map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC5(sc->tsec_tx_mtag,
		    sc->tx_bufmap[sc->tx_idx_tail].map);
		FUNC7(sc->tx_bufmap[sc->tx_idx_tail].mbuf);
		sc->tx_idx_tail = (sc->tx_idx_tail + 1)
		    & (TSEC_TX_NUM_DESC - 1);
	}

	/* Disable RX and TX */
	tmpval = FUNC2(sc, TSEC_REG_MACCFG1);
	tmpval &= ~(TSEC_MACCFG1_RX_EN | TSEC_MACCFG1_TX_EN);
	FUNC3(sc, TSEC_REG_MACCFG1, tmpval);
	FUNC0(10);
}
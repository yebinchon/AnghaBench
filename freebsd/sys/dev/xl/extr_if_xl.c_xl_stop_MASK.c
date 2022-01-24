#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * xl_tx_list; int /*<<< orphan*/ * xl_rx_list; } ;
struct TYPE_7__ {TYPE_2__* xl_tx_chain; TYPE_1__* xl_rx_chain; } ;
struct xl_softc {int xl_flags; TYPE_4__ xl_ldata; TYPE_3__ xl_cdata; int /*<<< orphan*/  xl_mtag; int /*<<< orphan*/  xl_tick_callout; int /*<<< orphan*/  xl_fhandle; int /*<<< orphan*/  xl_ftag; scalar_t__ xl_wdog_timer; struct ifnet* xl_ifp; } ;
struct ifnet {int if_drv_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/ * xl_mbuf; int /*<<< orphan*/  xl_map; } ;
struct TYPE_5__ {int /*<<< orphan*/ * xl_mbuf; int /*<<< orphan*/  xl_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int XL_CMD_COAX_STOP ; 
 int XL_CMD_INTR_ACK ; 
 int XL_CMD_INTR_ENB ; 
 int XL_CMD_RX_DISABLE ; 
 int XL_CMD_RX_DISCARD ; 
 int XL_CMD_RX_RESET ; 
 int XL_CMD_STATS_DISABLE ; 
 int XL_CMD_STAT_ENB ; 
 int XL_CMD_TX_DISABLE ; 
 int XL_CMD_TX_RESET ; 
 int /*<<< orphan*/  XL_COMMAND ; 
 int XL_FLAG_FUNCREG ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*) ; 
 int XL_RX_LIST_CNT ; 
 int /*<<< orphan*/  XL_RX_LIST_SZ ; 
 int XL_STAT_INTLATCH ; 
 int XL_TX_LIST_CNT ; 
 int /*<<< orphan*/  XL_TX_LIST_SZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC10(struct xl_softc *sc)
{
	int			i;
	struct ifnet		*ifp = sc->xl_ifp;

	FUNC2(sc);

	sc->xl_wdog_timer = 0;

	FUNC0(sc, XL_COMMAND, XL_CMD_RX_DISABLE);
	FUNC0(sc, XL_COMMAND, XL_CMD_STATS_DISABLE);
	FUNC0(sc, XL_COMMAND, XL_CMD_INTR_ENB);
	FUNC0(sc, XL_COMMAND, XL_CMD_RX_DISCARD);
	FUNC9(sc);
	FUNC0(sc, XL_COMMAND, XL_CMD_TX_DISABLE);
	FUNC0(sc, XL_COMMAND, XL_CMD_COAX_STOP);
	FUNC1(800);

#ifdef foo
	CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_RX_RESET);
	xl_wait(sc);
	CSR_WRITE_2(sc, XL_COMMAND, XL_CMD_TX_RESET);
	xl_wait(sc);
#endif

	FUNC0(sc, XL_COMMAND, XL_CMD_INTR_ACK|XL_STAT_INTLATCH);
	FUNC0(sc, XL_COMMAND, XL_CMD_STAT_ENB|0);
	FUNC0(sc, XL_COMMAND, XL_CMD_INTR_ENB|0);
	if (sc->xl_flags & XL_FLAG_FUNCREG)
		FUNC5(sc->xl_ftag, sc->xl_fhandle, 4, 0x8000);

	/* Stop the stats updater. */
	FUNC7(&sc->xl_tick_callout);

	/*
	 * Free data in the RX lists.
	 */
	for (i = 0; i < XL_RX_LIST_CNT; i++) {
		if (sc->xl_cdata.xl_rx_chain[i].xl_mbuf != NULL) {
			FUNC4(sc->xl_mtag,
			    sc->xl_cdata.xl_rx_chain[i].xl_map);
			FUNC3(sc->xl_mtag,
			    sc->xl_cdata.xl_rx_chain[i].xl_map);
			FUNC8(sc->xl_cdata.xl_rx_chain[i].xl_mbuf);
			sc->xl_cdata.xl_rx_chain[i].xl_mbuf = NULL;
		}
	}
	if (sc->xl_ldata.xl_rx_list != NULL)
		FUNC6(sc->xl_ldata.xl_rx_list, XL_RX_LIST_SZ);
	/*
	 * Free the TX list buffers.
	 */
	for (i = 0; i < XL_TX_LIST_CNT; i++) {
		if (sc->xl_cdata.xl_tx_chain[i].xl_mbuf != NULL) {
			FUNC4(sc->xl_mtag,
			    sc->xl_cdata.xl_tx_chain[i].xl_map);
			FUNC3(sc->xl_mtag,
			    sc->xl_cdata.xl_tx_chain[i].xl_map);
			FUNC8(sc->xl_cdata.xl_tx_chain[i].xl_mbuf);
			sc->xl_cdata.xl_tx_chain[i].xl_mbuf = NULL;
		}
	}
	if (sc->xl_ldata.xl_tx_list != NULL)
		FUNC6(sc->xl_ldata.xl_tx_list, XL_TX_LIST_SZ);

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
}
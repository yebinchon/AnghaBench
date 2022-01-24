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
struct ifnet {int if_drv_flags; } ;
struct dc_chain_data {int /*<<< orphan*/ ** dc_tx_chain; int /*<<< orphan*/ * dc_tx_map; int /*<<< orphan*/ ** dc_rx_chain; int /*<<< orphan*/ * dc_rx_map; } ;
struct dc_list_data {TYPE_1__* dc_tx_list; TYPE_1__* dc_rx_list; } ;
struct dc_softc {int /*<<< orphan*/  dc_tx_lmap; int /*<<< orphan*/  dc_tx_ltag; int /*<<< orphan*/  dc_tx_mtag; int /*<<< orphan*/  dc_smap; int /*<<< orphan*/  dc_stag; int /*<<< orphan*/  dc_rx_lmap; int /*<<< orphan*/  dc_rx_ltag; int /*<<< orphan*/  dc_rx_mtag; scalar_t__ dc_link; scalar_t__ dc_wdog_timer; int /*<<< orphan*/  dc_wdog_ch; int /*<<< orphan*/  dc_stat_ch; struct dc_chain_data dc_cdata; struct dc_list_data dc_ldata; struct ifnet* dc_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  dc_ctl; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_IMR ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int DC_NETCFG_RX_ON ; 
 int DC_NETCFG_TX_ON ; 
 int /*<<< orphan*/  DC_RXADDR ; 
 int DC_RX_LIST_CNT ; 
 int /*<<< orphan*/  DC_RX_LIST_SZ ; 
 int /*<<< orphan*/  DC_TXADDR ; 
 int DC_TXCTL_SETUP ; 
 int DC_TX_LIST_CNT ; 
 int /*<<< orphan*/  DC_TX_LIST_SZ ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct dc_softc *sc)
{
	struct ifnet *ifp;
	struct dc_list_data *ld;
	struct dc_chain_data *cd;
	int i;
	uint32_t ctl, netcfg;

	FUNC2(sc);

	ifp = sc->dc_ifp;
	ld = &sc->dc_ldata;
	cd = &sc->dc_cdata;

	FUNC6(&sc->dc_stat_ch);
	FUNC6(&sc->dc_wdog_ch);
	sc->dc_wdog_timer = 0;
	sc->dc_link = 0;

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	netcfg = FUNC0(sc, DC_NETCFG);
	if (netcfg & (DC_NETCFG_RX_ON | DC_NETCFG_TX_ON))
		FUNC1(sc, DC_NETCFG,
		   netcfg & ~(DC_NETCFG_RX_ON | DC_NETCFG_TX_ON));
	FUNC1(sc, DC_IMR, 0x00000000);
	/* Wait the completion of TX/RX SM. */
	if (netcfg & (DC_NETCFG_RX_ON | DC_NETCFG_TX_ON))
		FUNC7(sc);

	FUNC1(sc, DC_TXADDR, 0x00000000);
	FUNC1(sc, DC_RXADDR, 0x00000000);

	/*
	 * Free data in the RX lists.
	 */
	for (i = 0; i < DC_RX_LIST_CNT; i++) {
		if (cd->dc_rx_chain[i] != NULL) {
			FUNC3(sc->dc_rx_mtag,
			    cd->dc_rx_map[i], BUS_DMASYNC_POSTREAD);
			FUNC4(sc->dc_rx_mtag,
			    cd->dc_rx_map[i]);
			FUNC9(cd->dc_rx_chain[i]);
			cd->dc_rx_chain[i] = NULL;
		}
	}
	FUNC5(ld->dc_rx_list, DC_RX_LIST_SZ);
	FUNC3(sc->dc_rx_ltag, sc->dc_rx_lmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	/*
	 * Free the TX list buffers.
	 */
	for (i = 0; i < DC_TX_LIST_CNT; i++) {
		if (cd->dc_tx_chain[i] != NULL) {
			ctl = FUNC8(ld->dc_tx_list[i].dc_ctl);
			if (ctl & DC_TXCTL_SETUP) {
				FUNC3(sc->dc_stag, sc->dc_smap,
				    BUS_DMASYNC_POSTWRITE);
			} else {
				FUNC3(sc->dc_tx_mtag,
				    cd->dc_tx_map[i], BUS_DMASYNC_POSTWRITE);
				FUNC4(sc->dc_tx_mtag,
				    cd->dc_tx_map[i]);
				FUNC9(cd->dc_tx_chain[i]);
			}
			cd->dc_tx_chain[i] = NULL;
		}
	}
	FUNC5(ld->dc_tx_list, DC_TX_LIST_SZ);
	FUNC3(sc->dc_tx_ltag, sc->dc_tx_lmap,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
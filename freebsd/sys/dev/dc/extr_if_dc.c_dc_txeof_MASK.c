#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_4__ {scalar_t__ dc_tx_cnt; int dc_tx_cons; int dc_tx_prod; int /*<<< orphan*/ ** dc_tx_chain; int /*<<< orphan*/ * dc_tx_map; } ;
struct TYPE_3__ {struct dc_desc* dc_tx_list; } ;
struct dc_softc {scalar_t__ dc_pmode; int /*<<< orphan*/  dc_tx_lmap; int /*<<< orphan*/  dc_tx_ltag; scalar_t__ dc_wdog_timer; TYPE_2__ dc_cdata; int /*<<< orphan*/  dc_tx_mtag; int /*<<< orphan*/  dc_smap; int /*<<< orphan*/  dc_stag; TYPE_1__ dc_ldata; struct ifnet* dc_ifp; } ;
struct dc_desc {int /*<<< orphan*/  dc_ctl; int /*<<< orphan*/  dc_status; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (struct dc_softc*) ; 
 scalar_t__ FUNC2 (struct dc_softc*) ; 
 scalar_t__ FUNC3 (struct dc_softc*) ; 
 scalar_t__ DC_PMODE_MII ; 
 int DC_TXCTL_SETUP ; 
 int DC_TXSTAT_CARRLOST ; 
 int DC_TXSTAT_COLLCNT ; 
 int DC_TXSTAT_ERRSUM ; 
 int DC_TXSTAT_EXCESSCOLL ; 
 int DC_TXSTAT_LATECOLL ; 
 int DC_TXSTAT_NOCARRIER ; 
 int DC_TXSTAT_OWN ; 
 int DC_TXSTAT_UNDERRUN ; 
 scalar_t__ DC_TX_LIST_CNT ; 
 scalar_t__ DC_TX_LIST_RSVD ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct dc_softc *sc)
{
	struct dc_desc *cur_tx;
	struct ifnet *ifp;
	int idx, setup;
	uint32_t ctl, txstat;

	if (sc->dc_cdata.dc_tx_cnt == 0)
		return;

	ifp = sc->dc_ifp;

	/*
	 * Go through our tx list and free mbufs for those
	 * frames that have been transmitted.
	 */
	FUNC4(sc->dc_tx_ltag, sc->dc_tx_lmap, BUS_DMASYNC_POSTREAD |
	    BUS_DMASYNC_POSTWRITE);
	setup = 0;
	for (idx = sc->dc_cdata.dc_tx_cons; idx != sc->dc_cdata.dc_tx_prod;
	    FUNC0(idx, DC_TX_LIST_CNT), sc->dc_cdata.dc_tx_cnt--) {
		cur_tx = &sc->dc_ldata.dc_tx_list[idx];
		txstat = FUNC10(cur_tx->dc_status);
		ctl = FUNC10(cur_tx->dc_ctl);

		if (txstat & DC_TXSTAT_OWN)
			break;

		if (sc->dc_cdata.dc_tx_chain[idx] == NULL)
			continue;

		if (ctl & DC_TXCTL_SETUP) {
			cur_tx->dc_ctl = FUNC8(ctl & ~DC_TXCTL_SETUP);
			setup++;
			FUNC4(sc->dc_stag, sc->dc_smap,
			    BUS_DMASYNC_POSTWRITE);
			/*
			 * Yes, the PNIC is so brain damaged
			 * that it will sometimes generate a TX
			 * underrun error while DMAing the RX
			 * filter setup frame. If we detect this,
			 * we have to send the setup frame again,
			 * or else the filter won't be programmed
			 * correctly.
			 */
			if (FUNC2(sc)) {
				if (txstat & DC_TXSTAT_ERRSUM)
					FUNC7(sc);
			}
			sc->dc_cdata.dc_tx_chain[idx] = NULL;
			continue;
		}

		if (FUNC3(sc) || FUNC1(sc)) {
			/*
			 * XXX: Why does my Xircom taunt me so?
			 * For some reason it likes setting the CARRLOST flag
			 * even when the carrier is there. wtf?!?
			 * Who knows, but Conexant chips have the
			 * same problem. Maybe they took lessons
			 * from Xircom.
			 */
			if (/*sc->dc_type == DC_TYPE_21143 &&*/
			    sc->dc_pmode == DC_PMODE_MII &&
			    ((txstat & 0xFFFF) & ~(DC_TXSTAT_ERRSUM |
			    DC_TXSTAT_NOCARRIER)))
				txstat &= ~DC_TXSTAT_ERRSUM;
		} else {
			if (/*sc->dc_type == DC_TYPE_21143 &&*/
			    sc->dc_pmode == DC_PMODE_MII &&
			    ((txstat & 0xFFFF) & ~(DC_TXSTAT_ERRSUM |
			    DC_TXSTAT_NOCARRIER | DC_TXSTAT_CARRLOST)))
				txstat &= ~DC_TXSTAT_ERRSUM;
		}

		if (txstat & DC_TXSTAT_ERRSUM) {
			FUNC9(ifp, IFCOUNTER_OERRORS, 1);
			if (txstat & DC_TXSTAT_EXCESSCOLL)
				FUNC9(ifp, IFCOUNTER_COLLISIONS, 1);
			if (txstat & DC_TXSTAT_LATECOLL)
				FUNC9(ifp, IFCOUNTER_COLLISIONS, 1);
			if (!(txstat & DC_TXSTAT_UNDERRUN)) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC6(sc);
				return;
			}
		} else
			FUNC9(ifp, IFCOUNTER_OPACKETS, 1);
		FUNC9(ifp, IFCOUNTER_COLLISIONS, (txstat & DC_TXSTAT_COLLCNT) >> 3);

		FUNC4(sc->dc_tx_mtag, sc->dc_cdata.dc_tx_map[idx],
		    BUS_DMASYNC_POSTWRITE);
		FUNC5(sc->dc_tx_mtag, sc->dc_cdata.dc_tx_map[idx]);
		FUNC11(sc->dc_cdata.dc_tx_chain[idx]);
		sc->dc_cdata.dc_tx_chain[idx] = NULL;
	}
	sc->dc_cdata.dc_tx_cons = idx;

	if (sc->dc_cdata.dc_tx_cnt <= DC_TX_LIST_CNT - DC_TX_LIST_RSVD) {
		ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
		if (sc->dc_cdata.dc_tx_cnt == 0)
			sc->dc_wdog_timer = 0;
	}
	if (setup > 0)
		FUNC4(sc->dc_tx_ltag, sc->dc_tx_lmap,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}
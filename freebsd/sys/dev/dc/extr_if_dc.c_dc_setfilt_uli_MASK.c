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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mbuf {int dummy; } ;
struct ifnet {int if_flags; } ;
struct TYPE_4__ {int dc_tx_prod; int* dc_sbuf; struct mbuf** dc_tx_chain; int /*<<< orphan*/  dc_tx_cnt; } ;
struct TYPE_3__ {struct dc_desc* dc_tx_list; } ;
struct dc_softc {int dc_wdog_timer; int /*<<< orphan*/  dc_smap; int /*<<< orphan*/  dc_stag; int /*<<< orphan*/  dc_tx_lmap; int /*<<< orphan*/  dc_tx_ltag; struct ifnet* dc_ifp; TYPE_2__ dc_cdata; int /*<<< orphan*/  dc_saddr; TYPE_1__ dc_ldata; } ;
struct dc_desc {void* dc_status; void* dc_ctl; void* dc_data; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DC_FILTER_PERFECT ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int DC_NETCFG_RX_ALLMULTI ; 
 int DC_NETCFG_RX_ON ; 
 int DC_NETCFG_RX_PROMISC ; 
 int DC_NETCFG_TX_ON ; 
 int DC_SFRAME_LEN ; 
 void* FUNC4 (int) ; 
 int DC_TXCTL_FINT ; 
 int DC_TXCTL_SETUP ; 
 int DC_TXCTL_TLINK ; 
 int /*<<< orphan*/  DC_TXSTART ; 
 int DC_TXSTAT_OWN ; 
 int /*<<< orphan*/  DC_TX_LIST_CNT ; 
 int DC_ULI_FILTER_NPERF ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int ETHER_ADDR_LEN ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  dc_hash_maddr_uli ; 
 void* FUNC10 (int) ; 
 int FUNC11 (struct ifnet*,int /*<<< orphan*/ ,int**) ; 

__attribute__((used)) static void
FUNC12(struct dc_softc *sc)
{
	uint8_t eaddr[ETHER_ADDR_LEN];
	struct ifnet *ifp;
	struct dc_desc *sframe;
	uint32_t filter, *sp;
	int i, mcnt;

	ifp = sc->dc_ifp;

	i = sc->dc_cdata.dc_tx_prod;
	FUNC3(sc->dc_cdata.dc_tx_prod, DC_TX_LIST_CNT);
	sc->dc_cdata.dc_tx_cnt++;
	sframe = &sc->dc_ldata.dc_tx_list[i];
	sp = sc->dc_cdata.dc_sbuf;
	FUNC9(sp, DC_SFRAME_LEN);

	sframe->dc_data = FUNC10(FUNC2(sc->dc_saddr));
	sframe->dc_ctl = FUNC10(DC_SFRAME_LEN | DC_TXCTL_SETUP |
	    DC_TXCTL_TLINK | DC_FILTER_PERFECT | DC_TXCTL_FINT);

	sc->dc_cdata.dc_tx_chain[i] = (struct mbuf *)sc->dc_cdata.dc_sbuf;

	/* Set station address. */
	FUNC7(FUNC6(sc->dc_ifp), eaddr, ETHER_ADDR_LEN);
	*sp++ = FUNC4(eaddr[1] << 8 | eaddr[0]);
	*sp++ = FUNC4(eaddr[3] << 8 | eaddr[2]);
	*sp++ = FUNC4(eaddr[5] << 8 | eaddr[4]);

	/* Set broadcast address. */
	*sp++ = FUNC4(0xFFFF);
	*sp++ = FUNC4(0xFFFF);
	*sp++ = FUNC4(0xFFFF);

	/* Extract current filter configuration. */
	filter = FUNC0(sc, DC_NETCFG);
	filter &= ~(DC_NETCFG_RX_PROMISC | DC_NETCFG_RX_ALLMULTI);

	/* Now build perfect filters. */
	mcnt = FUNC11(ifp, dc_hash_maddr_uli, &sp);

	if (mcnt == DC_ULI_FILTER_NPERF)
		filter |= DC_NETCFG_RX_ALLMULTI;
	else
		for (; mcnt < DC_ULI_FILTER_NPERF; mcnt++) {
			*sp++ = FUNC4(0xFFFF);
			*sp++ = FUNC4(0xFFFF);
			*sp++ = FUNC4(0xFFFF);
		}

	if (filter & (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON))
		FUNC1(sc, DC_NETCFG,
		    filter & ~(DC_NETCFG_TX_ON | DC_NETCFG_RX_ON));
	if (ifp->if_flags & IFF_PROMISC)
		filter |= DC_NETCFG_RX_PROMISC | DC_NETCFG_RX_ALLMULTI;
	if (ifp->if_flags & IFF_ALLMULTI)
		filter |= DC_NETCFG_RX_ALLMULTI;
	FUNC1(sc, DC_NETCFG,
	    filter & ~(DC_NETCFG_TX_ON | DC_NETCFG_RX_ON));
	if (filter & (DC_NETCFG_TX_ON | DC_NETCFG_RX_ON))
		FUNC1(sc, DC_NETCFG, filter);

	sframe->dc_status = FUNC10(DC_TXSTAT_OWN);
	FUNC8(sc->dc_tx_ltag, sc->dc_tx_lmap, BUS_DMASYNC_PREREAD |
	    BUS_DMASYNC_PREWRITE);
	FUNC8(sc->dc_stag, sc->dc_smap, BUS_DMASYNC_PREWRITE);
	FUNC1(sc, DC_TXSTART, 0xFFFFFFFF);

	/*
	 * Wait some time...
	 */
	FUNC5(1000);

	sc->dc_wdog_timer = 5;
}
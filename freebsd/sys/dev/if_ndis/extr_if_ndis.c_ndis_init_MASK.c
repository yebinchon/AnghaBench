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
struct ieee80211com {scalar_t__ ic_promisc; } ;
struct ndis_softc {scalar_t__ ndis_iftype; int ndis_filter; int ndis_hang_timer; int ndis_running; struct ieee80211com ndis_ic; scalar_t__ ndis_80211; int /*<<< orphan*/  ndis_stat_callout; TYPE_1__* ndis_block; scalar_t__ ndis_tx_timer; struct ifnet* ifp; scalar_t__ ndis_link; int /*<<< orphan*/  ndis_maxpkts; int /*<<< orphan*/  ndis_txpending; scalar_t__ ndis_txidx; int /*<<< orphan*/  ndis_dev; } ;
struct ifnet {int if_flags; int if_mtu; int /*<<< orphan*/  if_drv_flags; } ;
typedef  int /*<<< orphan*/  i ;
struct TYPE_2__ {int nmb_checkforhangsecs; } ;

/* Variables and functions */
 int ETHERMTU ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  LINK_STATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ndis_softc*) ; 
 int NDIS_PACKET_TYPE_BROADCAST ; 
 int NDIS_PACKET_TYPE_DIRECTED ; 
 int NDIS_PACKET_TYPE_PROMISCUOUS ; 
 int /*<<< orphan*/  FUNC1 (struct ndis_softc*) ; 
 int /*<<< orphan*/  OID_GEN_CURRENT_LOOKAHEAD ; 
 int /*<<< orphan*/  OID_GEN_CURRENT_PACKET_FILTER ; 
 scalar_t__ PNPBus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ndis_softc*) ; 
 int FUNC7 (struct ndis_softc*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ndis_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ndis_softc*) ; 
 int /*<<< orphan*/  ndis_tick ; 
 scalar_t__ ndisusb_halt ; 

__attribute__((used)) static void
FUNC11(void *xsc)
{
	struct ndis_softc	*sc = xsc;
	int			i, len, error;

	/*
	 * Avoid reintializing the link unnecessarily.
	 * This should be dealt with in a better way by
	 * fixing the upper layer modules so they don't
	 * call ifp->if_init() quite as often.
	 */
	if (sc->ndis_link)
		return;

	/*
	 * Cancel pending I/O and free all RX/TX buffers.
	 */
	FUNC10(sc);

	if (!(sc->ndis_iftype == PNPBus && ndisusb_halt == 0)) {
		error = FUNC6(sc);
		if (error != 0) {
			FUNC3(sc->ndis_dev,
			    "failed to initialize the device: %d\n", error);
			return;
		}
	}

	/* Program the packet filter */
	sc->ndis_filter = NDIS_PACKET_TYPE_DIRECTED |
	    NDIS_PACKET_TYPE_BROADCAST;

	if (sc->ndis_80211) {
		struct ieee80211com *ic = &sc->ndis_ic;

		if (ic->ic_promisc > 0)
			sc->ndis_filter |= NDIS_PACKET_TYPE_PROMISCUOUS;
	} else {
		struct ifnet *ifp = sc->ifp;

		if (ifp->if_flags & IFF_PROMISC)
			sc->ndis_filter |= NDIS_PACKET_TYPE_PROMISCUOUS;
	}

	len = sizeof(sc->ndis_filter);

	error = FUNC7(sc, OID_GEN_CURRENT_PACKET_FILTER,
	    &sc->ndis_filter, &len);

	if (error)
		FUNC3(sc->ndis_dev, "set filter failed: %d\n", error);

	/*
	 * Set lookahead.
 	 */
	if (sc->ndis_80211)
		i = ETHERMTU;
	else
		i = sc->ifp->if_mtu;
	len = sizeof(i);
	FUNC7(sc, OID_GEN_CURRENT_LOOKAHEAD, &i, &len);

	/*
	 * Program the multicast filter, if necessary.
	 */
	FUNC9(sc);

	/* Setup task offload. */
	FUNC8(sc);

	FUNC0(sc);

	sc->ndis_txidx = 0;
	sc->ndis_txpending = sc->ndis_maxpkts;
	sc->ndis_link = 0;

	if (!sc->ndis_80211) {
		FUNC5(sc->ifp, LINK_STATE_UNKNOWN);
		sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
		sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	}

	sc->ndis_tx_timer = 0;

	/*
	 * Some drivers don't set this value. The NDIS spec says
	 * the default checkforhang timeout is "approximately 2
	 * seconds." We use 3 seconds, because it seems for some
	 * drivers, exactly 2 seconds is too fast.
	 */
	if (sc->ndis_block->nmb_checkforhangsecs == 0)
		sc->ndis_block->nmb_checkforhangsecs = 3;

	sc->ndis_hang_timer = sc->ndis_block->nmb_checkforhangsecs;
	FUNC2(&sc->ndis_stat_callout, hz, ndis_tick, sc);
	sc->ndis_running = 1;
	FUNC1(sc);

	/* XXX force handling */
	if (sc->ndis_80211)
		FUNC4(&sc->ndis_ic);	/* start all vap's */
}
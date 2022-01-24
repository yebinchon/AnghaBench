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
typedef  int uint8_t ;
struct ifmedia {int ifm_media; TYPE_1__* ifm_cur; } ;
struct ti_softc {scalar_t__ ti_hwrev; struct ifmedia ifmedia; int /*<<< orphan*/  ti_watchdog; scalar_t__ ti_rx_saved_considx; int /*<<< orphan*/  ti_dev; struct ifnet* ti_ifp; } ;
struct ti_cmd_desc {int dummy; } ;
struct ifnet {scalar_t__ if_mtu; int if_flags; int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_2__ {int ifm_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ETHERMTU ; 
 scalar_t__ ETHER_CRC_LEN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ ETHER_VLAN_ENCAP_LEN ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int* FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  TI_CMD_CODE_FILT_ENB ; 
 int /*<<< orphan*/  TI_CMD_CODE_PROMISC_DIS ; 
 int /*<<< orphan*/  TI_CMD_CODE_PROMISC_ENB ; 
 int /*<<< orphan*/  TI_CMD_CODE_STACK_UP ; 
 int /*<<< orphan*/  TI_CMD_FDR_FILTERING ; 
 int /*<<< orphan*/  TI_CMD_HOST_STATE ; 
 int /*<<< orphan*/  TI_CMD_SET_MAC_ADDR ; 
 int /*<<< orphan*/  TI_CMD_SET_PROMISC_MODE ; 
 int /*<<< orphan*/  TI_CMD_UPDATE_GENCOM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_GCR_IFINDEX ; 
 int /*<<< orphan*/  TI_GCR_IFMTU ; 
 int /*<<< orphan*/  TI_GCR_PAR0 ; 
 int /*<<< orphan*/  TI_GCR_PAR1 ; 
 int /*<<< orphan*/  TI_GCR_RXRETURNCONS_IDX ; 
 scalar_t__ TI_HWREV_TIGON ; 
 scalar_t__ TI_HWREV_TIGON_II ; 
 int /*<<< orphan*/  FUNC3 (struct ti_softc*) ; 
 int /*<<< orphan*/  TI_MB_HOSTINTR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ti_softc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC7 (struct ti_softc*) ; 
 scalar_t__ FUNC8 (struct ti_softc*) ; 
 scalar_t__ FUNC9 (struct ti_softc*) ; 
 scalar_t__ FUNC10 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ti_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ti_softc*) ; 
 int /*<<< orphan*/  ti_watchdog ; 

__attribute__((used)) static void FUNC13(struct ti_softc *sc)
{
	struct ti_cmd_desc cmd;
	struct ifnet *ifp;
	uint8_t *ea;
	struct ifmedia *ifm;
	int tmp;

	FUNC3(sc);

	ifp = sc->ti_ifp;

	/* Specify MTU and interface index. */
	FUNC0(sc, TI_GCR_IFINDEX, FUNC5(sc->ti_dev));
	FUNC0(sc, TI_GCR_IFMTU, ifp->if_mtu +
	    ETHER_HDR_LEN + ETHER_CRC_LEN + ETHER_VLAN_ENCAP_LEN);
	FUNC2(TI_CMD_UPDATE_GENCOM, 0, 0);

	/* Load our MAC address. */
	ea = FUNC1(sc->ti_ifp);
	FUNC0(sc, TI_GCR_PAR0, (ea[0] << 8) | ea[1]);
	FUNC0(sc, TI_GCR_PAR1,
	    (ea[2] << 24) | (ea[3] << 16) | (ea[4] << 8) | ea[5]);
	FUNC2(TI_CMD_SET_MAC_ADDR, 0, 0);

	/* Enable or disable promiscuous mode as needed. */
	if (ifp->if_flags & IFF_PROMISC) {
		FUNC2(TI_CMD_SET_PROMISC_MODE, TI_CMD_CODE_PROMISC_ENB, 0);
	} else {
		FUNC2(TI_CMD_SET_PROMISC_MODE, TI_CMD_CODE_PROMISC_DIS, 0);
	}

	/* Program multicast filter. */
	FUNC12(sc);

	/*
	 * If this is a Tigon 1, we should tell the
	 * firmware to use software packet filtering.
	 */
	if (sc->ti_hwrev == TI_HWREV_TIGON) {
		FUNC2(TI_CMD_FDR_FILTERING, TI_CMD_CODE_FILT_ENB, 0);
	}

	/* Init RX ring. */
	if (FUNC10(sc) != 0) {
		/* XXX */
		FUNC6(sc->ti_dev, "no memory for std Rx buffers.\n");
		return;
	}

	/* Init jumbo RX ring. */
	if (ifp->if_mtu > ETHERMTU + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN) {
		if (FUNC8(sc) != 0) {
			/* XXX */
			FUNC6(sc->ti_dev,
			    "no memory for jumbo Rx buffers.\n");
			return;
		}
	}

	/*
	 * If this is a Tigon 2, we can also configure the
	 * mini ring.
	 */
	if (sc->ti_hwrev == TI_HWREV_TIGON_II) {
		if (FUNC9(sc) != 0) {
			/* XXX */
			FUNC6(sc->ti_dev,
			    "no memory for mini Rx buffers.\n");
			return;
		}
	}

	FUNC0(sc, TI_GCR_RXRETURNCONS_IDX, 0);
	sc->ti_rx_saved_considx = 0;

	/* Init TX ring. */
	FUNC11(sc);

	/* Tell firmware we're alive. */
	FUNC2(TI_CMD_HOST_STATE, TI_CMD_CODE_STACK_UP, 0);

	/* Enable host interrupts. */
	FUNC0(sc, TI_MB_HOSTINTR, 0);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	FUNC4(&sc->ti_watchdog, hz, ti_watchdog, sc);

	/*
	 * Make sure to set media properly. We have to do this
	 * here since we have to issue commands in order to set
	 * the link negotiation and we can't issue commands until
	 * the firmware is running.
	 */
	ifm = &sc->ifmedia;
	tmp = ifm->ifm_media;
	ifm->ifm_media = ifm->ifm_cur->ifm_media;
	FUNC7(sc);
	ifm->ifm_media = tmp;
}
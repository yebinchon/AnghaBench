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
typedef  int u_long ;
struct vtnet_softc {int vtnet_if_flags; int vtnet_flags; int /*<<< orphan*/  vtnet_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_mtu; struct vtnet_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_softc*) ; 
 int VTNET_FLAG_CTRL_RX ; 
 int FUNC4 (struct ifnet*,int,scalar_t__) ; 
 int FUNC5 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct vtnet_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct vtnet_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct vtnet_softc*) ; 

__attribute__((used)) static int
FUNC11(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct vtnet_softc *sc;
	struct ifreq *ifr;
	int reinit, mask, error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *) data;
	error = 0;

	switch (cmd) {
	case SIOCSIFMTU:
		if (ifp->if_mtu != ifr->ifr_mtu) {
			FUNC1(sc);
			error = FUNC6(sc, ifr->ifr_mtu);
			FUNC3(sc);
		}
		break;

	case SIOCSIFFLAGS:
		FUNC1(sc);
		if ((ifp->if_flags & IFF_UP) == 0) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC10(sc);
		} else if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
			if ((ifp->if_flags ^ sc->vtnet_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI)) {
				if (sc->vtnet_flags & VTNET_FLAG_CTRL_RX)
					FUNC8(sc);
				else {
					ifp->if_flags |= IFF_PROMISC;
					if ((ifp->if_flags ^ sc->vtnet_if_flags)
					    & IFF_ALLMULTI)
						error = ENOTSUP;
				}
			}
		} else
			FUNC7(sc);

		if (error == 0)
			sc->vtnet_if_flags = ifp->if_flags;
		FUNC3(sc);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if ((sc->vtnet_flags & VTNET_FLAG_CTRL_RX) == 0)
			break;
		FUNC1(sc);
		if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC9(sc);
		FUNC3(sc);
		break;

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC5(ifp, ifr, &sc->vtnet_media, cmd);
		break;

	case SIOCSIFCAP:
		FUNC1(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;

		if (mask & IFCAP_TXCSUM)
			ifp->if_capenable ^= IFCAP_TXCSUM;
		if (mask & IFCAP_TXCSUM_IPV6)
			ifp->if_capenable ^= IFCAP_TXCSUM_IPV6;
		if (mask & IFCAP_TSO4)
			ifp->if_capenable ^= IFCAP_TSO4;
		if (mask & IFCAP_TSO6)
			ifp->if_capenable ^= IFCAP_TSO6;

		if (mask & (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6 | IFCAP_LRO |
		    IFCAP_VLAN_HWFILTER)) {
			/* These Rx features require us to renegotiate. */
			reinit = 1;

			if (mask & IFCAP_RXCSUM)
				ifp->if_capenable ^= IFCAP_RXCSUM;
			if (mask & IFCAP_RXCSUM_IPV6)
				ifp->if_capenable ^= IFCAP_RXCSUM_IPV6;
			if (mask & IFCAP_LRO)
				ifp->if_capenable ^= IFCAP_LRO;
			if (mask & IFCAP_VLAN_HWFILTER)
				ifp->if_capenable ^= IFCAP_VLAN_HWFILTER;
		} else
			reinit = 0;

		if (mask & IFCAP_VLAN_HWTSO)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
		if (mask & IFCAP_VLAN_HWTAGGING)
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;

		if (reinit && (ifp->if_drv_flags & IFF_DRV_RUNNING)) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC7(sc);
		}

		FUNC3(sc);
		FUNC0(ifp);

		break;

	default:
		error = FUNC4(ifp, cmd, data);
		break;
	}

	FUNC2(sc);

	return (error);
}
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
typedef  int u_long ;
struct rl_softc {int rl_flags; int rl_if_flags; int /*<<< orphan*/  rl_miibus; TYPE_1__* rl_hwrev; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_capenable; int if_flags; int if_capabilities; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_mtu; struct rl_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  rl_max_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rl_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFCAP_WOL_UCAST ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  RE_CSUM_FEATURES ; 
 int RL_FLAG_FASTETHER ; 
 int RL_FLAG_JUMBOV2 ; 
 int /*<<< orphan*/  RL_IMR ; 
 int RL_INTRS_CPLUS ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*) ; 
 int /*<<< orphan*/  RL_MTU ; 
 int /*<<< orphan*/  RL_TSO_MTU ; 
 int /*<<< orphan*/  FUNC2 (struct rl_softc*) ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int FUNC6 (struct ifnet*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC8 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rl_softc*) ; 
 int /*<<< orphan*/  re_poll ; 
 int /*<<< orphan*/  FUNC10 (struct rl_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct rl_softc*) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct rl_softc		*sc = ifp->if_softc;
	struct ifreq		*ifr = (struct ifreq *) data;
	struct mii_data		*mii;
	int			error = 0;

	switch (command) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN ||
		    ifr->ifr_mtu > sc->rl_hwrev->rl_max_mtu ||
		    ((sc->rl_flags & RL_FLAG_FASTETHER) != 0 &&
		    ifr->ifr_mtu > RL_MTU)) {
			error = EINVAL;
			break;
		}
		FUNC1(sc);
		if (ifp->if_mtu != ifr->ifr_mtu) {
			ifp->if_mtu = ifr->ifr_mtu;
			if ((sc->rl_flags & RL_FLAG_JUMBOV2) != 0 &&
			    (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC9(sc);
			}
			if (ifp->if_mtu > RL_TSO_MTU &&
			    (ifp->if_capenable & IFCAP_TSO4) != 0) {
				ifp->if_capenable &= ~(IFCAP_TSO4 |
				    IFCAP_VLAN_HWTSO);
				ifp->if_hwassist &= ~CSUM_TSO;
			}
			FUNC3(ifp);
		}
		FUNC2(sc);
		break;
	case SIOCSIFFLAGS:
		FUNC1(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				if (((ifp->if_flags ^ sc->rl_if_flags)
				    & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
					FUNC10(sc);
			} else
				FUNC9(sc);
		} else {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
				FUNC11(sc);
		}
		sc->rl_if_flags = ifp->if_flags;
		FUNC2(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC1(sc);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC10(sc);
		FUNC2(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		mii = FUNC4(sc->rl_miibus);
		error = FUNC8(ifp, ifr, &mii->mii_media, command);
		break;
	case SIOCSIFCAP:
	    {
		int mask, reinit;

		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		reinit = 0;
#ifdef DEVICE_POLLING
		if (mask & IFCAP_POLLING) {
			if (ifr->ifr_reqcap & IFCAP_POLLING) {
				error = ether_poll_register(re_poll, ifp);
				if (error)
					return (error);
				RL_LOCK(sc);
				/* Disable interrupts */
				CSR_WRITE_2(sc, RL_IMR, 0x0000);
				ifp->if_capenable |= IFCAP_POLLING;
				RL_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				/* Enable interrupts. */
				RL_LOCK(sc);
				CSR_WRITE_2(sc, RL_IMR, RL_INTRS_CPLUS);
				ifp->if_capenable &= ~IFCAP_POLLING;
				RL_UNLOCK(sc);
			}
		}
#endif /* DEVICE_POLLING */
		FUNC1(sc);
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
				ifp->if_hwassist |= RE_CSUM_FEATURES;
			else
				ifp->if_hwassist &= ~RE_CSUM_FEATURES;
			reinit = 1;
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_RXCSUM;
			reinit = 1;
		}
		if ((mask & IFCAP_TSO4) != 0 &&
		    (ifp->if_capabilities & IFCAP_TSO4) != 0) {
			ifp->if_capenable ^= IFCAP_TSO4;
			if ((IFCAP_TSO4 & ifp->if_capenable) != 0)
				ifp->if_hwassist |= CSUM_TSO;
			else
				ifp->if_hwassist &= ~CSUM_TSO;
			if (ifp->if_mtu > RL_TSO_MTU &&
			    (ifp->if_capenable & IFCAP_TSO4) != 0) {
				ifp->if_capenable &= ~IFCAP_TSO4;
				ifp->if_hwassist &= ~CSUM_TSO;
			}
		}
		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			/* TSO over VLAN requires VLAN hardware tagging. */
			if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
				ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;
			reinit = 1;
		}
		if ((sc->rl_flags & RL_FLAG_JUMBOV2) != 0 &&
		    (mask & (IFCAP_HWCSUM | IFCAP_TSO4 |
		    IFCAP_VLAN_HWTSO)) != 0)
				reinit = 1;
		if ((mask & IFCAP_WOL) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL) != 0) {
			if ((mask & IFCAP_WOL_UCAST) != 0)
				ifp->if_capenable ^= IFCAP_WOL_UCAST;
			if ((mask & IFCAP_WOL_MCAST) != 0)
				ifp->if_capenable ^= IFCAP_WOL_MCAST;
			if ((mask & IFCAP_WOL_MAGIC) != 0)
				ifp->if_capenable ^= IFCAP_WOL_MAGIC;
		}
		if (reinit && ifp->if_drv_flags & IFF_DRV_RUNNING) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC9(sc);
		}
		FUNC2(sc);
		FUNC3(ifp);
	    }
		break;
	default:
		error = FUNC5(ifp, command, data);
		break;
	}

	return (error);
}
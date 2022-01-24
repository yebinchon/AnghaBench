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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_mtu; struct age_softc* if_softc; } ;
struct age_softc {int age_if_flags; int age_flags; int /*<<< orphan*/  age_miibus; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGE_CSUM_FEATURES ; 
 int AGE_FLAG_DETACH ; 
 int /*<<< orphan*/  AGE_JUMBO_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_MAC_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct age_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  MAC_CFG_RXCSUM_ENB ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct age_softc*) ; 
 struct mii_data* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ifnet*,int,scalar_t__) ; 
 int FUNC11 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct age_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	uint32_t reg;
	int error, mask;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	error = 0;
	switch (cmd) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > AGE_JUMBO_MTU)
			error = EINVAL;
		else if (ifp->if_mtu != ifr->ifr_mtu) {
			FUNC0(sc);
			ifp->if_mtu = ifr->ifr_mtu;
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC5(sc);
			}
			FUNC1(sc);
		}
		break;
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				if (((ifp->if_flags ^ sc->age_if_flags)
				    & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
					FUNC6(sc);
			} else {
				if ((sc->age_flags & AGE_FLAG_DETACH) == 0)
					FUNC5(sc);
			}
		} else {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
				FUNC8(sc);
		}
		sc->age_if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC6(sc);
		FUNC1(sc);
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = FUNC9(sc->age_miibus);
		error = FUNC11(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		FUNC0(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
				ifp->if_hwassist |= AGE_CSUM_FEATURES;
			else
				ifp->if_hwassist &= ~AGE_CSUM_FEATURES;
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_RXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_RXCSUM;
			reg = FUNC2(sc, AGE_MAC_CFG);
			reg &= ~MAC_CFG_RXCSUM_ENB;
			if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
				reg |= MAC_CFG_RXCSUM_ENB;
			FUNC3(sc, AGE_MAC_CFG, reg);
		}
		if ((mask & IFCAP_TSO4) != 0 &&
		    (ifp->if_capabilities & IFCAP_TSO4) != 0) {
			ifp->if_capenable ^= IFCAP_TSO4;
			if ((ifp->if_capenable & IFCAP_TSO4) != 0)
				ifp->if_hwassist |= CSUM_TSO;
			else
				ifp->if_hwassist &= ~CSUM_TSO;
		}

		if ((mask & IFCAP_WOL_MCAST) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL_MCAST) != 0)
			ifp->if_capenable ^= IFCAP_WOL_MCAST;
		if ((mask & IFCAP_WOL_MAGIC) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
			ifp->if_capenable ^= IFCAP_WOL_MAGIC;
		if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
				ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;
			FUNC7(sc);
		}
		FUNC1(sc);
		FUNC4(ifp);
		break;
	default:
		error = FUNC10(ifp, cmd, data);
		break;
	}

	return (error);
}
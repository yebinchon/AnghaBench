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
struct stge_softc {int sc_if_flags; int /*<<< orphan*/  sc_IntEnable; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/  sc_detach; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_mtu; struct stge_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
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
 int /*<<< orphan*/  STGE_CSUM_FEATURES ; 
 int /*<<< orphan*/  STGE_IntEnable ; 
 int /*<<< orphan*/  STGE_JUMBO_MTU ; 
 int /*<<< orphan*/  FUNC1 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 struct mii_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int FUNC6 (struct ifnet*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC8 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct stge_softc*) ; 
 int /*<<< orphan*/  stge_poll ; 
 int /*<<< orphan*/  FUNC10 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct stge_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct stge_softc*) ; 

__attribute__((used)) static int
FUNC14(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct stge_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	int error, mask;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	error = 0;
	switch (cmd) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > STGE_JUMBO_MTU)
			error = EINVAL;
		else if (ifp->if_mtu != ifr->ifr_mtu) {
			ifp->if_mtu = ifr->ifr_mtu;
			FUNC1(sc);
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC9(sc);
			}
			FUNC2(sc);
		}
		break;
	case SIOCSIFFLAGS:
		FUNC1(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				if (((ifp->if_flags ^ sc->sc_if_flags)
				    & IFF_PROMISC) != 0)
					FUNC10(sc);
			} else {
				if (sc->sc_detach == 0)
					FUNC9(sc);
			}
		} else {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
				FUNC12(sc);
		}
		sc->sc_if_flags = ifp->if_flags;
		FUNC2(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC1(sc);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC11(sc);
		FUNC2(sc);
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = FUNC4(sc->sc_miibus);
		error = FUNC8(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
#ifdef DEVICE_POLLING
		if ((mask & IFCAP_POLLING) != 0) {
			if ((ifr->ifr_reqcap & IFCAP_POLLING) != 0) {
				error = ether_poll_register(stge_poll, ifp);
				if (error != 0)
					break;
				STGE_LOCK(sc);
				CSR_WRITE_2(sc, STGE_IntEnable, 0);
				ifp->if_capenable |= IFCAP_POLLING;
				STGE_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				if (error != 0)
					break;
				STGE_LOCK(sc);
				CSR_WRITE_2(sc, STGE_IntEnable,
				    sc->sc_IntEnable);
				ifp->if_capenable &= ~IFCAP_POLLING;
				STGE_UNLOCK(sc);
			}
		}
#endif
		if ((mask & IFCAP_HWCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_HWCSUM;
			if ((IFCAP_HWCSUM & ifp->if_capenable) != 0 &&
			    (IFCAP_HWCSUM & ifp->if_capabilities) != 0)
				ifp->if_hwassist = STGE_CSUM_FEATURES;
			else
				ifp->if_hwassist = 0;
		}
		if ((mask & IFCAP_WOL) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL) != 0) {
			if ((mask & IFCAP_WOL_MAGIC) != 0)
				ifp->if_capenable ^= IFCAP_WOL_MAGIC;
		}
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				FUNC1(sc);
				FUNC13(sc);
				FUNC2(sc);
			}
		}
		FUNC3(ifp);
		break;
	default:
		error = FUNC5(ifp, cmd, data);
		break;
	}

	return (error);
}
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
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_drv_flags; int if_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_mtu; struct ae_softc* if_softc; } ;
struct ae_softc {int if_flags; int flags; int /*<<< orphan*/  miibus; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int AE_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct ae_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ae_softc*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int IFCAP_VLAN_HWTAGGING ; 
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
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ae_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ae_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ae_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ae_softc*) ; 
 struct mii_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ifnet*,int,scalar_t__) ; 
 int FUNC9 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct ae_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	int error, mask;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	error = 0;

	switch (cmd) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > ETHERMTU)
			error = EINVAL;
		else if (ifp->if_mtu != ifr->ifr_mtu) {
			FUNC0(sc);
			ifp->if_mtu = ifr->ifr_mtu;
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC3(sc);
			}
			FUNC1(sc);
		}
		break;
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				if (((ifp->if_flags ^ sc->if_flags)
				    & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
					FUNC4(sc);
			} else {
				if ((sc->flags & AE_FLAG_DETACH) == 0)
					FUNC3(sc);
			}
		} else {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
				FUNC6(sc);
		}
		sc->if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC4(sc);
		FUNC1(sc);
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = FUNC7(sc->miibus);
		error = FUNC9(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		FUNC0(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			FUNC5(sc);
		}
		FUNC2(ifp);
		FUNC1(sc);
		break;
	default:
		error = FUNC8(ifp, cmd, data);
		break;
	}
	return (error);
}
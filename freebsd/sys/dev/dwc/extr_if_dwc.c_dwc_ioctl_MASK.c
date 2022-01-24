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
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct dwc_softc* if_softc; } ;
struct dwc_softc {int if_flags; struct mii_data* mii_softc; int /*<<< orphan*/  is_detaching; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_softc*) ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC2 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc_softc*) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int FUNC6 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct dwc_softc *sc;
	struct mii_data *mii;
	struct ifreq *ifr;
	int mask, error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;

	error = 0;
	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				if ((ifp->if_flags ^ sc->if_flags) &
				    (IFF_PROMISC | IFF_ALLMULTI))
					FUNC3(sc);
			} else {
				if (!sc->is_detaching)
					FUNC2(sc);
			}
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC4(sc);
		}
		sc->if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
			FUNC0(sc);
			FUNC3(sc);
			FUNC1(sc);
		}
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = sc->mii_softc;
		error = FUNC6(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		mask = ifp->if_capenable ^ ifr->ifr_reqcap;
		if (mask & IFCAP_VLAN_MTU) {
			/* No work to do except acknowledge the change took */
			ifp->if_capenable ^= IFCAP_VLAN_MTU;
		}
		break;

	default:
		error = FUNC5(ifp, cmd, data);
		break;
	}

	return (error);
}
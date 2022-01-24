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
struct vtbe_softc {int if_flags; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct vtbe_softc* if_softc; } ;
struct ifmediareq {int ifm_count; int ifm_status; int ifm_active; int ifm_current; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFCAP_VLAN_MTU ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int IFM_10G_T ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFADDR 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC0 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtbe_softc*) ; 
 int FUNC2 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vtbe_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vtbe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtbe_softc*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct ifmediareq *ifmr;
	struct vtbe_softc *sc;
	struct ifreq *ifr;
	int mask, error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;

	error = 0;
	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			FUNC3(sc, 1);

			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0) {
				FUNC4(sc);
			}
		} else {
			FUNC3(sc, 0);

			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC5(sc);
			}
		}
		sc->if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		ifmr = (struct ifmediareq *)data;
		ifmr->ifm_count = 1;
		ifmr->ifm_status = (IFM_AVALID | IFM_ACTIVE);
		ifmr->ifm_active = (IFM_ETHER | IFM_10G_T | IFM_FDX);
		ifmr->ifm_current = ifmr->ifm_active;
		break;
	case SIOCSIFCAP:
		mask = ifp->if_capenable ^ ifr->ifr_reqcap;
		if (mask & IFCAP_VLAN_MTU) {
			ifp->if_capenable ^= IFCAP_VLAN_MTU;
		}
		break;

	case SIOCSIFADDR:
		FUNC3(sc, 1);
	default:
		error = FUNC2(ifp, cmd, data);
		break;
	}

	return (error);
}
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
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_hwassist; struct hme_softc* if_softc; } ;
struct hme_softc {int sc_ifflags; int /*<<< orphan*/  sc_csum_features; TYPE_1__* sc_mii; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  mii_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hme_softc*) ; 
 int IFCAP_TXCSUM ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_LINK0 ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int FUNC2 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct hme_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hme_softc*) ; 
 int FUNC6 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct hme_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *)data;
	int error = 0;

	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
			    ((ifp->if_flags ^ sc->sc_ifflags) &
			    (IFF_ALLMULTI | IFF_PROMISC)) != 0)
				FUNC4(sc, 1);
			else
				FUNC3(sc);
		} else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC5(sc);
		if ((ifp->if_flags & IFF_LINK0) != 0)
			sc->sc_csum_features |= CSUM_UDP;
		else
			sc->sc_csum_features &= ~CSUM_UDP;
		if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
			ifp->if_hwassist = sc->sc_csum_features;
		sc->sc_ifflags = ifp->if_flags;
		FUNC1(sc);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		FUNC4(sc, 1);
		FUNC1(sc);
		error = 0;
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		error = FUNC6(ifp, ifr, &sc->sc_mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		FUNC0(sc);
		ifp->if_capenable = ifr->ifr_reqcap;
		if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
			ifp->if_hwassist = sc->sc_csum_features;
		else
			ifp->if_hwassist = 0;
		FUNC1(sc);
		break;
	default:
		error = FUNC2(ifp, cmd, data);
		break;
	}

	return (error);
}
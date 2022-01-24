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
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct atse_softc* if_softc; } ;
struct atse_softc {int atse_if_flags; int /*<<< orphan*/  atse_miibus; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atse_softc*) ; 
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
 int /*<<< orphan*/  FUNC2 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct atse_softc*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int,scalar_t__) ; 
 int FUNC7 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct atse_softc *sc;
	struct ifreq *ifr;
	int error, mask;

	error = 0;
	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
			    ((ifp->if_flags ^ sc->atse_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI)) != 0)
				FUNC3(sc);
			else
				FUNC2(sc);
		} else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC4(sc);
		sc->atse_if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCSIFCAP:
		FUNC0(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		FUNC3(sc);
		FUNC1(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
	{
		struct mii_data *mii;
		struct ifreq *ifr;

		mii = FUNC5(sc->atse_miibus);
		ifr = (struct ifreq *)data;
		error = FUNC7(ifp, ifr, &mii->mii_media, command);
		break;
	}
	default:
		error = FUNC6(ifp, command, data);
		break;
	}

	return (error);
}
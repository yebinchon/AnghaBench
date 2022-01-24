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
struct vte_softc {int vte_if_flags; int /*<<< orphan*/  vte_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct vte_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC0 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vte_softc*) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct vte_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	int error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	error = 0;
	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
			    ((ifp->if_flags ^ sc->vte_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI)) != 0)
				FUNC6(sc);
			else
				FUNC5(sc);
		} else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC7(sc);
		sc->vte_if_flags = ifp->if_flags;
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
		mii = FUNC2(sc->vte_miibus);
		error = FUNC4(ifp, ifr, &mii->mii_media, cmd);
		break;
	default:
		error = FUNC3(ifp, cmd, data);
		break;
	}

	return (error);
}
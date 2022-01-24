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
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct bfe_softc* if_softc; } ;
struct bfe_softc {int bfe_flags; int /*<<< orphan*/  bfe_miibus; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int BFE_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfe_softc*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int,scalar_t__) ; 
 int FUNC7 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct bfe_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *) data;
	struct mii_data *mii;
	int error = 0;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC3(sc);
			else if ((sc->bfe_flags & BFE_FLAG_DETACH) == 0)
				FUNC2(sc);
		} else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC4(sc);
		FUNC1(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC3(sc);
		FUNC1(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		mii = FUNC5(sc->bfe_miibus);
		error = FUNC7(ifp, ifr, &mii->mii_media, command);
		break;
	default:
		error = FUNC6(ifp, command, data);
		break;
	}

	return (error);
}
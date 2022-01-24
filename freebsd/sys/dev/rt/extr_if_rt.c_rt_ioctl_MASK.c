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
struct rt_softc {int if_flags; int /*<<< orphan*/  rt_ifmedia; int /*<<< orphan*/  rt_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct rt_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_softc*) ; 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC8(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct rt_softc *sc;
	struct ifreq *ifr;
#ifdef IF_RT_PHY_SUPPORT
	struct mii_data *mii;
#endif /* IF_RT_PHY_SUPPORT */
	int error, startall;

	sc = ifp->if_softc;
	ifr = (struct ifreq *) data;

	error = 0;

	switch (cmd) {
	case SIOCSIFFLAGS:
		startall = 0;
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				if ((ifp->if_flags ^ sc->if_flags) &
				    IFF_PROMISC)
					FUNC7(ifp);
			} else {
				FUNC5(sc);
				startall = 1;
			}
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC6(sc);
		}
		sc->if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
#ifdef IF_RT_PHY_SUPPORT
		mii = device_get_softc(sc->rt_miibus);
		error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, cmd);
#else
		error = FUNC4(ifp, ifr, &sc->rt_ifmedia, cmd);
#endif /* IF_RT_PHY_SUPPORT */
		break;
	default:
		error = FUNC3(ifp, cmd, data);
		break;
	}
	return (error);
}
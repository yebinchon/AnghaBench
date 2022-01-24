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
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; struct arge_softc* if_softc; } ;
struct arge_softc {int arge_if_flags; int /*<<< orphan*/  arge_ifmedia; int /*<<< orphan*/  arge_miibus; int /*<<< orphan*/  arge_detach; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR71XX_DMA_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct arge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_INTR_ALL ; 
 int IFCAP_POLLING ; 
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
 int /*<<< orphan*/  FUNC3 (struct arge_softc*) ; 
 int /*<<< orphan*/  arge_poll ; 
 int /*<<< orphan*/  FUNC4 (struct arge_softc*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int,scalar_t__) ; 
 int FUNC7 (struct ifnet*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC9 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct arge_softc		*sc = ifp->if_softc;
	struct ifreq		*ifr = (struct ifreq *) data;
	struct mii_data		*mii;
	int			error;
#ifdef DEVICE_POLLING
	int			mask;
#endif

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				if (((ifp->if_flags ^ sc->arge_if_flags)
				    & (IFF_PROMISC | IFF_ALLMULTI)) != 0) {
					/* XXX: handle promisc & multi flags */
				}

			} else {
				if (!sc->arge_detach)
					FUNC3(sc);
			}
		} else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC4(sc);
		}
		sc->arge_if_flags = ifp->if_flags;
		FUNC1(sc);
		error = 0;
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		/* XXX: implement SIOCDELMULTI */
		error = 0;
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		if (sc->arge_miibus) {
			mii = FUNC5(sc->arge_miibus);
			error = FUNC9(ifp, ifr, &mii->mii_media,
			    command);
		}
		else
			error = FUNC9(ifp, ifr, &sc->arge_ifmedia,
			    command);
		break;
	case SIOCSIFCAP:
		/* XXX: Check other capabilities */
#ifdef DEVICE_POLLING
		mask = ifp->if_capenable ^ ifr->ifr_reqcap;
		if (mask & IFCAP_POLLING) {
			if (ifr->ifr_reqcap & IFCAP_POLLING) {
				ARGE_WRITE(sc, AR71XX_DMA_INTR, 0);
				error = ether_poll_register(arge_poll, ifp);
				if (error)
					return error;
				ARGE_LOCK(sc);
				ifp->if_capenable |= IFCAP_POLLING;
				ARGE_UNLOCK(sc);
			} else {
				ARGE_WRITE(sc, AR71XX_DMA_INTR, DMA_INTR_ALL);
				error = ether_poll_deregister(ifp);
				ARGE_LOCK(sc);
				ifp->if_capenable &= ~IFCAP_POLLING;
				ARGE_UNLOCK(sc);
			}
		}
		error = 0;
		break;
#endif
	default:
		error = FUNC6(ifp, command, data);
		break;
	}

	return (error);
}
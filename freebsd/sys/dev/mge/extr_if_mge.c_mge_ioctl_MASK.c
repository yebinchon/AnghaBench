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
typedef  int uint32_t ;
typedef  int u_long ;
struct mge_softc {int mge_if_flags; TYPE_1__* mii; int /*<<< orphan*/  dev; int /*<<< orphan*/  mge_ifmedia; int /*<<< orphan*/  phy_attached; } ;
struct ifreq {int ifr_reqcap; int ifr_media; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_hwassist; struct mge_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  mii_media; } ;

/* Variables and functions */
 int IFCAP_HWCSUM ; 
 int IFCAP_POLLING ; 
 int IFCAP_TXCSUM ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IFM_1000_T ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MGE_CHECKSUM_FEATURES ; 
 int /*<<< orphan*/  FUNC1 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mge_softc*) ; 
 int /*<<< orphan*/  MGE_RX_DEFAULT_QUEUE ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ifnet*,int,scalar_t__) ; 
 int FUNC5 (struct ifnet*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC7 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct mge_softc*,int) ; 
 int /*<<< orphan*/  mge_poll ; 
 int /*<<< orphan*/  FUNC10 (struct mge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct mge_softc*) ; 

__attribute__((used)) static int
FUNC13(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct mge_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *)data;
	int mask, error;
	uint32_t flags;

	error = 0;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC1(sc);

		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				flags = ifp->if_flags ^ sc->mge_if_flags;
				if (flags & IFF_PROMISC)
					FUNC10(sc,
					    MGE_RX_DEFAULT_QUEUE);

				if (flags & IFF_ALLMULTI)
					FUNC11(sc);
			} else
				FUNC8(sc);
		}
		else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC12(sc);

		sc->mge_if_flags = ifp->if_flags;
		FUNC2(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
			FUNC1(sc);
			FUNC11(sc);
			FUNC2(sc);
		}
		break;
	case SIOCSIFCAP:
		mask = ifp->if_capenable ^ ifr->ifr_reqcap;
		if (mask & IFCAP_HWCSUM) {
			ifp->if_capenable &= ~IFCAP_HWCSUM;
			ifp->if_capenable |= IFCAP_HWCSUM & ifr->ifr_reqcap;
			if (ifp->if_capenable & IFCAP_TXCSUM)
				ifp->if_hwassist = MGE_CHECKSUM_FEATURES;
			else
				ifp->if_hwassist = 0;
		}
#ifdef DEVICE_POLLING
		if (mask & IFCAP_POLLING) {
			if (ifr->ifr_reqcap & IFCAP_POLLING) {
				error = ether_poll_register(mge_poll, ifp);
				if (error)
					return(error);

				MGE_GLOBAL_LOCK(sc);
				mge_intrs_ctrl(sc, 0);
				ifp->if_capenable |= IFCAP_POLLING;
				MGE_GLOBAL_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				MGE_GLOBAL_LOCK(sc);
				mge_intrs_ctrl(sc, 1);
				ifp->if_capenable &= ~IFCAP_POLLING;
				MGE_GLOBAL_UNLOCK(sc);
			}
		}
#endif
		break;
	case SIOCGIFMEDIA: /* fall through */
	case SIOCSIFMEDIA:
		/*
		 * Setting up media type via ioctls is *not* supported for MAC
		 * which is connected to switch. Use etherswitchcfg.
		 */
		if (!sc->phy_attached && (command == SIOCSIFMEDIA))
			return (0);
		else if (!sc->phy_attached) {
			error = FUNC7(ifp, ifr, &sc->mge_ifmedia,
			    command);
			break;
		}

		if (FUNC0(ifr->ifr_media) == IFM_1000_T
		    && !(ifr->ifr_media & IFM_FDX)) {
			FUNC3(sc->dev,
			    "1000baseTX half-duplex unsupported\n");
			return 0;
		}
		error = FUNC7(ifp, ifr, &sc->mii->mii_media, command);
		break;
	default:
		error = FUNC4(ifp, command, data);
	}
	return (error);
}
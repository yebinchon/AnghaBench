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
struct sge_softc {int sge_if_flags; int /*<<< orphan*/  sge_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; struct sge_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_TSO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  SGE_CSUM_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*) ; 
#define  SIOCADDMULTI 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ifnet*,int,scalar_t__) ; 
 int FUNC5 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct sge_softc*) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct sge_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	int error = 0, mask, reinit;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;

	switch(command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
			    ((ifp->if_flags ^ sc->sge_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI)) != 0)
				FUNC7(sc);
			else
				FUNC6(sc);
		} else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC8(sc);
		sc->sge_if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCSIFCAP:
		FUNC0(sc);
		reinit = 0;
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
				ifp->if_hwassist |= SGE_CSUM_FEATURES;
			else
				ifp->if_hwassist &= ~SGE_CSUM_FEATURES;
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
			ifp->if_capenable ^= IFCAP_RXCSUM;
		if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
		if ((mask & IFCAP_TSO4) != 0 &&
		    (ifp->if_capabilities & IFCAP_TSO4) != 0) {
			ifp->if_capenable ^= IFCAP_TSO4;
			if ((ifp->if_capenable & IFCAP_TSO4) != 0)
				ifp->if_hwassist |= CSUM_TSO;
			else
				ifp->if_hwassist &= ~CSUM_TSO;
		}
		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTAGGING) != 0) {
			/*
			 * Due to unknown reason, toggling VLAN hardware
			 * tagging require interface reinitialization.
			 */
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) == 0)
				ifp->if_capenable &=
				    ~(IFCAP_VLAN_HWTSO | IFCAP_VLAN_HWCSUM);
			reinit = 1;
		}
		if (reinit > 0 && (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(sc);
		}
		FUNC1(sc);
		FUNC2(ifp);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC7(sc);
		FUNC1(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		mii = FUNC3(sc->sge_miibus);
		error = FUNC5(ifp, ifr, &mii->mii_media, command);
		break;
	default:
		error = FUNC4(ifp, command, data);
		break;
	}

	return (error);
}
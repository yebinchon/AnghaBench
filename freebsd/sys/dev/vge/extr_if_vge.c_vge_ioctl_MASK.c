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
struct vge_softc {int vge_flags; int vge_if_flags; int /*<<< orphan*/  vge_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_mtu; struct vge_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFCAP_WOL_UCAST ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  VGE_CR3_INT_GMSK ; 
 int /*<<< orphan*/  VGE_CRS3 ; 
 int /*<<< orphan*/  VGE_CSUM_FEATURES ; 
 int VGE_FLAG_JUMBO ; 
 int /*<<< orphan*/  VGE_IMR ; 
 int VGE_INTRS ; 
 int VGE_INTRS_POLLING ; 
 int /*<<< orphan*/  VGE_ISR ; 
 int /*<<< orphan*/  VGE_JUMBO_MTU ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int,scalar_t__) ; 
 int FUNC7 (struct ifnet*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct ifnet*) ; 
 int FUNC9 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vge_softc*) ; 
 int /*<<< orphan*/  vge_poll ; 
 int /*<<< orphan*/  FUNC11 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct vge_softc*) ; 

__attribute__((used)) static int
FUNC14(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct vge_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *) data;
	struct mii_data *mii;
	int error = 0, mask;

	switch (command) {
	case SIOCSIFMTU:
		FUNC2(sc);
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > VGE_JUMBO_MTU)
			error = EINVAL;
		else if (ifp->if_mtu != ifr->ifr_mtu) {
			if (ifr->ifr_mtu > ETHERMTU &&
			    (sc->vge_flags & VGE_FLAG_JUMBO) == 0)
				error = EINVAL;
			else
				ifp->if_mtu = ifr->ifr_mtu;
		}
		FUNC3(sc);
		break;
	case SIOCSIFFLAGS:
		FUNC2(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0 &&
			    ((ifp->if_flags ^ sc->vge_if_flags) &
			    (IFF_PROMISC | IFF_ALLMULTI)) != 0)
				FUNC11(sc);
			else
				FUNC10(sc);
		} else if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC13(sc);
		sc->vge_if_flags = ifp->if_flags;
		FUNC3(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC2(sc);
		if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC11(sc);
		FUNC3(sc);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		mii = FUNC5(sc->vge_miibus);
		error = FUNC9(ifp, ifr, &mii->mii_media, command);
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
#ifdef DEVICE_POLLING
		if (mask & IFCAP_POLLING) {
			if (ifr->ifr_reqcap & IFCAP_POLLING) {
				error = ether_poll_register(vge_poll, ifp);
				if (error)
					return (error);
				VGE_LOCK(sc);
					/* Disable interrupts */
				CSR_WRITE_4(sc, VGE_IMR, VGE_INTRS_POLLING);
				CSR_WRITE_4(sc, VGE_ISR, 0xFFFFFFFF);
				CSR_WRITE_1(sc, VGE_CRS3, VGE_CR3_INT_GMSK);
				ifp->if_capenable |= IFCAP_POLLING;
				VGE_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				/* Enable interrupts. */
				VGE_LOCK(sc);
				CSR_WRITE_4(sc, VGE_IMR, VGE_INTRS);
				CSR_WRITE_4(sc, VGE_ISR, 0xFFFFFFFF);
				CSR_WRITE_1(sc, VGE_CRS3, VGE_CR3_INT_GMSK);
				ifp->if_capenable &= ~IFCAP_POLLING;
				VGE_UNLOCK(sc);
			}
		}
#endif /* DEVICE_POLLING */
		FUNC2(sc);
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_TXCSUM) != 0) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			if ((ifp->if_capenable & IFCAP_TXCSUM) != 0)
				ifp->if_hwassist |= VGE_CSUM_FEATURES;
			else
				ifp->if_hwassist &= ~VGE_CSUM_FEATURES;
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_RXCSUM) != 0)
			ifp->if_capenable ^= IFCAP_RXCSUM;
		if ((mask & IFCAP_WOL_UCAST) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL_UCAST) != 0)
			ifp->if_capenable ^= IFCAP_WOL_UCAST;
		if ((mask & IFCAP_WOL_MCAST) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL_MCAST) != 0)
			ifp->if_capenable ^= IFCAP_WOL_MCAST;
		if ((mask & IFCAP_WOL_MAGIC) != 0 &&
		    (ifp->if_capabilities & IFCAP_WOL_MAGIC) != 0)
			ifp->if_capenable ^= IFCAP_WOL_MAGIC;
		if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (IFCAP_VLAN_HWTAGGING & ifp->if_capabilities) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			FUNC12(sc);
		}
		FUNC3(sc);
		FUNC4(ifp);
		break;
	default:
		error = FUNC6(ifp, command, data);
		break;
	}

	return (error);
}
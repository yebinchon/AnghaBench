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
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct bge_softc {int bge_flags; int bge_if_flags; int /*<<< orphan*/  bge_csum_features; int /*<<< orphan*/  bge_miibus; int /*<<< orphan*/  bge_ifmedia; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BGE_FLAG_JUMBO_STD ; 
 int BGE_FLAG_TBI ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_JUMBO_MTU ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_MBX_IRQ0_LO ; 
 int /*<<< orphan*/  BGE_PCIMISCCTL_MASK_PCI_INTR ; 
 int /*<<< orphan*/  BGE_PCI_MISC_CTL ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bge_softc*) ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
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
 int /*<<< orphan*/  FUNC5 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bge_softc*) ; 
 int /*<<< orphan*/  bge_poll ; 
 int /*<<< orphan*/  FUNC7 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 struct mii_data* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 struct bge_softc* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ ,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC29(if_t ifp, u_long command, caddr_t data)
{
	struct bge_softc *sc = FUNC21(ifp);
	struct ifreq *ifr = (struct ifreq *) data;
	struct mii_data *mii;
	int flags, mask, error = 0;

	switch (command) {
	case SIOCSIFMTU:
		if (FUNC1(sc) ||
		    (sc->bge_flags & BGE_FLAG_JUMBO_STD)) {
			if (ifr->ifr_mtu < ETHERMIN ||
			    ifr->ifr_mtu > BGE_JUMBO_MTU) {
				error = EINVAL;
				break;
			}
		} else if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > ETHERMTU) {
			error = EINVAL;
			break;
		}
		FUNC2(sc);
		if (FUNC20(ifp) != ifr->ifr_mtu) {
			FUNC25(ifp, ifr->ifr_mtu);
			if (FUNC18(ifp) & IFF_DRV_RUNNING) {
				FUNC23(ifp, 0, IFF_DRV_RUNNING);
				FUNC6(sc);
			}
		}
		FUNC4(sc);
		break;
	case SIOCSIFFLAGS:
		FUNC2(sc);
		if (FUNC19(ifp) & IFF_UP) {
			/*
			 * If only the state of the PROMISC flag changed,
			 * then just use the 'set promisc mode' command
			 * instead of reinitializing the entire NIC. Doing
			 * a full re-init means reloading the firmware and
			 * waiting for it to start up, which may take a
			 * second or two.  Similarly for ALLMULTI.
			 */
			if (FUNC18(ifp) & IFF_DRV_RUNNING) {
				flags = FUNC19(ifp) ^ sc->bge_if_flags;
				if (flags & IFF_PROMISC)
					FUNC8(sc);
				if (flags & IFF_ALLMULTI)
					FUNC7(sc);
			} else
				FUNC6(sc);
		} else {
			if (FUNC18(ifp) & IFF_DRV_RUNNING) {
				FUNC10(sc);
			}
		}
		sc->bge_if_flags = FUNC19(ifp);
		FUNC4(sc);
		error = 0;
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (FUNC18(ifp) & IFF_DRV_RUNNING) {
			FUNC2(sc);
			FUNC7(sc);
			FUNC4(sc);
			error = 0;
		}
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		if (sc->bge_flags & BGE_FLAG_TBI) {
			error = FUNC28(ifp, ifr,
			    &sc->bge_ifmedia, command);
		} else {
			mii = FUNC12(sc->bge_miibus);
			error = FUNC28(ifp, ifr,
			    &mii->mii_media, command);
		}
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ FUNC17(ifp);
#ifdef DEVICE_POLLING
		if (mask & IFCAP_POLLING) {
			if (ifr->ifr_reqcap & IFCAP_POLLING) {
				error = ether_poll_register(bge_poll, ifp);
				if (error)
					return (error);
				BGE_LOCK(sc);
				BGE_SETBIT(sc, BGE_PCI_MISC_CTL,
				    BGE_PCIMISCCTL_MASK_PCI_INTR);
				bge_writembx(sc, BGE_MBX_IRQ0_LO, 1);
				if_setcapenablebit(ifp, IFCAP_POLLING, 0);
				BGE_UNLOCK(sc);
			} else {
				error = ether_poll_deregister(ifp);
				/* Enable interrupt even in error case */
				BGE_LOCK(sc);
				BGE_CLRBIT(sc, BGE_PCI_MISC_CTL,
				    BGE_PCIMISCCTL_MASK_PCI_INTR);
				bge_writembx(sc, BGE_MBX_IRQ0_LO, 0);
				if_setcapenablebit(ifp, 0, IFCAP_POLLING);
				BGE_UNLOCK(sc);
			}
		}
#endif
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    (FUNC16(ifp) & IFCAP_TXCSUM) != 0) {
			FUNC26(ifp, IFCAP_TXCSUM);
			if ((FUNC17(ifp) & IFCAP_TXCSUM) != 0)
				FUNC24(ifp,
				    sc->bge_csum_features, 0);
			else
				FUNC24(ifp, 0,
				    sc->bge_csum_features);
		}

		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (FUNC16(ifp) & IFCAP_RXCSUM) != 0)
			FUNC26(ifp, IFCAP_RXCSUM);

		if ((mask & IFCAP_TSO4) != 0 &&
		    (FUNC16(ifp) & IFCAP_TSO4) != 0) {
			FUNC26(ifp, IFCAP_TSO4);
			if ((FUNC17(ifp) & IFCAP_TSO4) != 0)
				FUNC24(ifp, CSUM_TSO, 0);
			else
				FUNC24(ifp, 0, CSUM_TSO);
		}

		if (mask & IFCAP_VLAN_MTU) {
			FUNC26(ifp, IFCAP_VLAN_MTU);
			FUNC23(ifp, 0, IFF_DRV_RUNNING);
			FUNC5(sc);
		}

		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (FUNC16(ifp) & IFCAP_VLAN_HWTSO) != 0)
			FUNC26(ifp, IFCAP_VLAN_HWTSO);
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (FUNC16(ifp) & IFCAP_VLAN_HWTAGGING) != 0) {
			FUNC26(ifp, IFCAP_VLAN_HWTAGGING);
			if ((FUNC17(ifp) & IFCAP_VLAN_HWTAGGING) == 0)
				FUNC22(ifp, 0, IFCAP_VLAN_HWTSO);
			FUNC2(sc);
			FUNC9(sc);
			FUNC4(sc);
		}
#ifdef VLAN_CAPABILITIES
		if_vlancap(ifp);
#endif
		break;
	default:
		error = FUNC13(ifp, command, data);
		break;
	}

	return (error);
}
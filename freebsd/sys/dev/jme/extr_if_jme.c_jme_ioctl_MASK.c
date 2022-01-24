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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u_long ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct jme_softc {int jme_flags; int jme_if_flags; int /*<<< orphan*/  jme_miibus; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_capenable; int if_hwassist; int if_drv_flags; int if_flags; int if_capabilities; int /*<<< orphan*/  if_mtu; struct jme_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CSUM_TSO ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_WOL_MAGIC ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int JME_CSUM_FEATURES ; 
 int JME_FLAG_DETACH ; 
 int JME_FLAG_NOJUMBO ; 
 int /*<<< orphan*/  JME_JUMBO_MTU ; 
 int /*<<< orphan*/  FUNC2 (struct jme_softc*) ; 
 int /*<<< orphan*/  JME_MAX_MTU ; 
 int /*<<< orphan*/  JME_RXMAC ; 
 int /*<<< orphan*/  JME_TX_FIFO_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct jme_softc*) ; 
 int /*<<< orphan*/  RXMAC_CSUM_ENB ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ifnet*,int,scalar_t__) ; 
 int FUNC7 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct jme_softc*) ; 

__attribute__((used)) static int
FUNC12(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct jme_softc *sc;
	struct ifreq *ifr;
	struct mii_data *mii;
	uint32_t reg;
	int error, mask;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	error = 0;
	switch (cmd) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > JME_JUMBO_MTU ||
		    ((sc->jme_flags & JME_FLAG_NOJUMBO) != 0 &&
		    ifr->ifr_mtu > JME_MAX_MTU)) {
			error = EINVAL;
			break;
		}

		if (ifp->if_mtu != ifr->ifr_mtu) {
			/*
			 * No special configuration is required when interface
			 * MTU is changed but availability of TSO/Tx checksum
			 * offload should be chcked against new MTU size as
			 * FIFO size is just 2K.
			 */
			FUNC2(sc);
			if (ifr->ifr_mtu >= JME_TX_FIFO_SIZE) {
				ifp->if_capenable &=
				    ~(IFCAP_TXCSUM | IFCAP_TSO4);
				ifp->if_hwassist &=
				    ~(JME_CSUM_FEATURES | CSUM_TSO);
				FUNC4(ifp);
			}
			ifp->if_mtu = ifr->ifr_mtu;
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC8(sc);
			}
			FUNC3(sc);
		}
		break;
	case SIOCSIFFLAGS:
		FUNC2(sc);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
				if (((ifp->if_flags ^ sc->jme_if_flags)
				    & (IFF_PROMISC | IFF_ALLMULTI)) != 0)
					FUNC9(sc);
			} else {
				if ((sc->jme_flags & JME_FLAG_DETACH) == 0)
					FUNC8(sc);
			}
		} else {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
				FUNC11(sc);
		}
		sc->jme_if_flags = ifp->if_flags;
		FUNC3(sc);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC2(sc);
		if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC9(sc);
		FUNC3(sc);
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		mii = FUNC5(sc->jme_miibus);
		error = FUNC7(ifp, ifr, &mii->mii_media, cmd);
		break;
	case SIOCSIFCAP:
		FUNC2(sc);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if ((mask & IFCAP_TXCSUM) != 0 &&
		    ifp->if_mtu < JME_TX_FIFO_SIZE) {
			if ((IFCAP_TXCSUM & ifp->if_capabilities) != 0) {
				ifp->if_capenable ^= IFCAP_TXCSUM;
				if ((IFCAP_TXCSUM & ifp->if_capenable) != 0)
					ifp->if_hwassist |= JME_CSUM_FEATURES;
				else
					ifp->if_hwassist &= ~JME_CSUM_FEATURES;
			}
		}
		if ((mask & IFCAP_RXCSUM) != 0 &&
		    (IFCAP_RXCSUM & ifp->if_capabilities) != 0) {
			ifp->if_capenable ^= IFCAP_RXCSUM;
			reg = FUNC0(sc, JME_RXMAC);
			reg &= ~RXMAC_CSUM_ENB;
			if ((ifp->if_capenable & IFCAP_RXCSUM) != 0)
				reg |= RXMAC_CSUM_ENB;
			FUNC1(sc, JME_RXMAC, reg);
		}
		if ((mask & IFCAP_TSO4) != 0 &&
		    ifp->if_mtu < JME_TX_FIFO_SIZE) {
			if ((IFCAP_TSO4 & ifp->if_capabilities) != 0) {
				ifp->if_capenable ^= IFCAP_TSO4;
				if ((IFCAP_TSO4 & ifp->if_capenable) != 0)
					ifp->if_hwassist |= CSUM_TSO;
				else
					ifp->if_hwassist &= ~CSUM_TSO;
			}
		}
		if ((mask & IFCAP_WOL_MAGIC) != 0 &&
		    (IFCAP_WOL_MAGIC & ifp->if_capabilities) != 0)
			ifp->if_capenable ^= IFCAP_WOL_MAGIC;
		if ((mask & IFCAP_VLAN_HWCSUM) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWCSUM) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWCSUM;
		if ((mask & IFCAP_VLAN_HWTSO) != 0 &&
		    (ifp->if_capabilities & IFCAP_VLAN_HWTSO) != 0)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;
		if ((mask & IFCAP_VLAN_HWTAGGING) != 0 &&
		    (IFCAP_VLAN_HWTAGGING & ifp->if_capabilities) != 0) {
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
			FUNC10(sc);
		}
		FUNC3(sc);
		FUNC4(ifp);
		break;
	default:
		error = FUNC6(ifp, cmd, data);
		break;
	}

	return (error);
}
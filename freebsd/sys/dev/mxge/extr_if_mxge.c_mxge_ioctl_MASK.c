#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_10__ {int /*<<< orphan*/  ifru_data; } ;
struct ifreq {int ifr_reqcap; TYPE_1__ ifr_ifru; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_hwassist; int if_capabilities; TYPE_2__* if_softc; } ;
struct ifi2creq {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  driver_mtx; int /*<<< orphan*/  dying; int /*<<< orphan*/  connector; int /*<<< orphan*/  media; } ;
typedef  TYPE_2__ mxge_softc_t ;
typedef  int /*<<< orphan*/  i2c ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int EINVAL ; 
 int ENXIO ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  MXGE_SFP ; 
 int /*<<< orphan*/  MXGE_XFP ; 
#define  SIOCADDMULTI 134 
#define  SIOCDELMULTI 133 
#define  SIOCGI2C 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ifi2creq*,int) ; 
 int FUNC2 (struct ifi2creq*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,struct ifi2creq*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(struct ifnet *ifp, u_long command, caddr_t data)
{
	mxge_softc_t *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *)data;
	struct ifi2creq i2c;
	int err, mask;

	err = 0;
	switch (command) {
	case SIOCSIFMTU:
		err = FUNC8(sc, ifr->ifr_mtu);
		break;

	case SIOCSIFFLAGS:
		FUNC6(&sc->driver_mtx);
		if (sc->dying) {
			FUNC7(&sc->driver_mtx);
			return EINVAL;
		}
		if (ifp->if_flags & IFF_UP) {
			if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
				err = FUNC13(sc);
			} else {
				/* take care of promis can allmulti
				   flag chages */
				FUNC9(sc,
						    ifp->if_flags & IFF_PROMISC);
				FUNC14(sc);
			}
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC10(sc, 0);
			}
		}
		FUNC7(&sc->driver_mtx);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC6(&sc->driver_mtx);
		if (sc->dying) {
			FUNC7(&sc->driver_mtx);
			return (EINVAL);
		}
		FUNC14(sc);
		FUNC7(&sc->driver_mtx);
		break;

	case SIOCSIFCAP:
		FUNC6(&sc->driver_mtx);
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		if (mask & IFCAP_TXCSUM) {
			if (IFCAP_TXCSUM & ifp->if_capenable) {
				ifp->if_capenable &= ~(IFCAP_TXCSUM|IFCAP_TSO4);
				ifp->if_hwassist &= ~(CSUM_TCP | CSUM_UDP);
			} else {
				ifp->if_capenable |= IFCAP_TXCSUM;
				ifp->if_hwassist |= (CSUM_TCP | CSUM_UDP);
			}
		} else if (mask & IFCAP_RXCSUM) {
			if (IFCAP_RXCSUM & ifp->if_capenable) {
				ifp->if_capenable &= ~IFCAP_RXCSUM;
			} else {
				ifp->if_capenable |= IFCAP_RXCSUM;
			}
		}
		if (mask & IFCAP_TSO4) {
			if (IFCAP_TSO4 & ifp->if_capenable) {
				ifp->if_capenable &= ~IFCAP_TSO4;
			} else if (IFCAP_TXCSUM & ifp->if_capenable) {
				ifp->if_capenable |= IFCAP_TSO4;
				ifp->if_hwassist |= CSUM_TSO;
			} else {
				FUNC15("mxge requires tx checksum offload"
				       " be enabled to use TSO\n");
				err = EINVAL;
			}
		}
#if IFCAP_TSO6
		if (mask & IFCAP_TXCSUM_IPV6) {
			if (IFCAP_TXCSUM_IPV6 & ifp->if_capenable) {
				ifp->if_capenable &= ~(IFCAP_TXCSUM_IPV6
						       | IFCAP_TSO6);
				ifp->if_hwassist &= ~(CSUM_TCP_IPV6
						      | CSUM_UDP);
			} else {
				ifp->if_capenable |= IFCAP_TXCSUM_IPV6;
				ifp->if_hwassist |= (CSUM_TCP_IPV6
						     | CSUM_UDP_IPV6);
			}
		} else if (mask & IFCAP_RXCSUM_IPV6) {
			if (IFCAP_RXCSUM_IPV6 & ifp->if_capenable) {
				ifp->if_capenable &= ~IFCAP_RXCSUM_IPV6;
			} else {
				ifp->if_capenable |= IFCAP_RXCSUM_IPV6;
			}
		}
		if (mask & IFCAP_TSO6) {
			if (IFCAP_TSO6 & ifp->if_capenable) {
				ifp->if_capenable &= ~IFCAP_TSO6;
			} else if (IFCAP_TXCSUM_IPV6 & ifp->if_capenable) {
				ifp->if_capenable |= IFCAP_TSO6;
				ifp->if_hwassist |= CSUM_TSO;
			} else {
				printf("mxge requires tx checksum offload"
				       " be enabled to use TSO\n");
				err = EINVAL;
			}
		}
#endif /*IFCAP_TSO6 */

		if (mask & IFCAP_LRO)
			ifp->if_capenable ^= IFCAP_LRO;
		if (mask & IFCAP_VLAN_HWTAGGING)
			ifp->if_capenable ^= IFCAP_VLAN_HWTAGGING;
		if (mask & IFCAP_VLAN_HWTSO)
			ifp->if_capenable ^= IFCAP_VLAN_HWTSO;

		if (!(ifp->if_capabilities & IFCAP_VLAN_HWTSO) ||
		    !(ifp->if_capenable & IFCAP_VLAN_HWTAGGING))
			ifp->if_capenable &= ~IFCAP_VLAN_HWTSO;

		FUNC7(&sc->driver_mtx);
		FUNC0(ifp);

		break;

	case SIOCGIFMEDIA:
		FUNC6(&sc->driver_mtx);
		if (sc->dying) {
			FUNC7(&sc->driver_mtx);
			return (EINVAL);
		}
		FUNC12(sc);
		FUNC7(&sc->driver_mtx);
		err = FUNC4(ifp, (struct ifreq *)data,
				    &sc->media, command);
		break;

	case SIOCGI2C:
		if (sc->connector != MXGE_XFP &&
		    sc->connector != MXGE_SFP) {
			err = ENXIO;
			break;
		}
		err = FUNC1(FUNC5(ifr), &i2c, sizeof(i2c));
		if (err != 0)
			break;
		FUNC6(&sc->driver_mtx);
		if (sc->dying) {
			FUNC7(&sc->driver_mtx);
			return (EINVAL);
		}
		err = FUNC11(sc, &i2c);
		FUNC7(&sc->driver_mtx);
		if (err == 0)
			err = FUNC2(&i2c, ifr->ifr_ifru.ifru_data,
			    sizeof(i2c));
		break;
	default:
		err = FUNC3(ifp, command, data);
		break;
	}
	return err;
}
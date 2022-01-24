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
struct sfxge_softc {int if_flags; int /*<<< orphan*/  enp; int /*<<< orphan*/  media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int if_hwassist; int /*<<< orphan*/  if_mtu; struct sfxge_softc* if_softc; } ;
struct ifi2creq {int len; int /*<<< orphan*/ * data; int /*<<< orphan*/  offset; int /*<<< orphan*/  dev_addr; } ;
typedef  struct ifi2creq sfxge_ioc_t ;
typedef  int /*<<< orphan*/  ioc ;
typedef  int /*<<< orphan*/  i2c ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int EAGAIN ; 
 int EINVAL ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PRIV_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfxge_softc*) ; 
 int SFXGE_CAP_FIXED ; 
 int /*<<< orphan*/  SFXGE_MAX_MTU ; 
#define  SIOCADDMULTI 136 
#define  SIOCDELMULTI 135 
#define  SIOCGI2C 134 
#define  SIOCGIFMEDIA 133 
#define  SIOCGPRIVATE_0 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int FUNC3 (int /*<<< orphan*/ ,struct ifi2creq*,int) ; 
 int FUNC4 (struct ifi2creq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  curthread ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct ifnet*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,char*) ; 
 int FUNC9 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct ifreq*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sfxge_softc*) ; 
 int FUNC13 (struct sfxge_softc*,struct ifi2creq*) ; 
 int FUNC14 (struct sfxge_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct sfxge_softc*) ; 

__attribute__((used)) static int
FUNC16(struct ifnet *ifp, unsigned long command, caddr_t data)
{
	struct sfxge_softc *sc;
	struct ifreq *ifr;
	sfxge_ioc_t ioc;
	int error;

	ifr = (struct ifreq *)data;
	sc = ifp->if_softc;
	error = 0;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC1(sc);
		if (ifp->if_flags & IFF_UP) {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				if ((ifp->if_flags ^ sc->if_flags) &
				    (IFF_PROMISC | IFF_ALLMULTI)) {
					FUNC12(sc);
				}
			} else
				FUNC14(sc);
		} else
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC15(sc);
		sc->if_flags = ifp->if_flags;
		FUNC2(sc);
		break;
	case SIOCSIFMTU:
		if (ifr->ifr_mtu == ifp->if_mtu) {
			/* Nothing to do */
			error = 0;
		} else if (ifr->ifr_mtu > SFXGE_MAX_MTU) {
			error = EINVAL;
		} else if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
			ifp->if_mtu = ifr->ifr_mtu;
			error = 0;
		} else {
			/* Restart required */
			FUNC1(sc);
			FUNC15(sc);
			ifp->if_mtu = ifr->ifr_mtu;
			error = FUNC14(sc);
			FUNC2(sc);
			if (error != 0) {
				ifp->if_flags &= ~IFF_UP;
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC7(ifp);
			}
		}
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC12(sc);
		break;
	case SIOCSIFCAP:
	{
		int reqcap = ifr->ifr_reqcap;
		int capchg_mask;

		FUNC1(sc);

		/* Capabilities to be changed in accordance with request */
		capchg_mask = ifp->if_capenable ^ reqcap;

		/*
		 * The networking core already rejects attempts to
		 * enable capabilities we don't have.  We still have
		 * to reject attempts to disable capabilities that we
		 * can't (yet) disable.
		 */
		FUNC0((reqcap & ~ifp->if_capabilities) == 0,
		    ("Unsupported capabilities 0x%x requested 0x%x vs "
		     "supported 0x%x",
		     reqcap & ~ifp->if_capabilities,
		     reqcap , ifp->if_capabilities));
		if (capchg_mask & SFXGE_CAP_FIXED) {
			error = EINVAL;
			FUNC2(sc);
			break;
		}

		/* Check request before any changes */
		if ((capchg_mask & IFCAP_TSO4) &&
		    (reqcap & (IFCAP_TSO4 | IFCAP_TXCSUM)) == IFCAP_TSO4) {
			error = EAGAIN;
			FUNC2(sc);
			FUNC8(ifp, "enable txcsum before tso4\n");
			break;
		}
		if ((capchg_mask & IFCAP_TSO6) &&
		    (reqcap & (IFCAP_TSO6 | IFCAP_TXCSUM_IPV6)) == IFCAP_TSO6) {
			error = EAGAIN;
			FUNC2(sc);
			FUNC8(ifp, "enable txcsum6 before tso6\n");
			break;
		}

		if (reqcap & IFCAP_TXCSUM) {
			ifp->if_hwassist |= (CSUM_IP | CSUM_TCP | CSUM_UDP);
		} else {
			ifp->if_hwassist &= ~(CSUM_IP | CSUM_TCP | CSUM_UDP);
			if (reqcap & IFCAP_TSO4) {
				reqcap &= ~IFCAP_TSO4;
				FUNC8(ifp,
				    "tso4 disabled due to -txcsum\n");
			}
		}
		if (reqcap & IFCAP_TXCSUM_IPV6) {
			ifp->if_hwassist |= (CSUM_TCP_IPV6 | CSUM_UDP_IPV6);
		} else {
			ifp->if_hwassist &= ~(CSUM_TCP_IPV6 | CSUM_UDP_IPV6);
			if (reqcap & IFCAP_TSO6) {
				reqcap &= ~IFCAP_TSO6;
				FUNC8(ifp,
				    "tso6 disabled due to -txcsum6\n");
			}
		}

		/*
		 * The kernel takes both IFCAP_TSOx and CSUM_TSO into
		 * account before using TSO. So, we do not touch
		 * checksum flags when IFCAP_TSOx is modified.
		 * Note that CSUM_TSO is (CSUM_IP_TSO|CSUM_IP6_TSO),
		 * but both bits are set in IPv4 and IPv6 mbufs.
		 */

		ifp->if_capenable = reqcap;

		FUNC2(sc);
		break;
	}
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC9(ifp, ifr, &sc->media, command);
		break;
#ifdef SIOCGI2C
	case SIOCGI2C:
	{
		struct ifi2creq i2c;

		error = FUNC3(FUNC10(ifr), &i2c, sizeof(i2c));
		if (error != 0)
			break;

		if (i2c.len > sizeof(i2c.data)) {
			error = EINVAL;
			break;
		}

		FUNC1(sc);
		error = FUNC5(sc->enp, i2c.dev_addr,
						i2c.offset, i2c.len,
						&i2c.data[0]);
		FUNC2(sc);
		if (error == 0)
			error = FUNC4(&i2c, FUNC10(ifr),
			    sizeof(i2c));
		break;
	}
#endif
	case SIOCGPRIVATE_0:
		error = FUNC11(curthread, PRIV_DRIVER);
		if (error != 0)
			break;
		error = FUNC3(FUNC10(ifr), &ioc, sizeof(ioc));
		if (error != 0)
			return (error);
		error = FUNC13(sc, &ioc);
		if (error == 0) {
			error = FUNC4(&ioc, FUNC10(ifr),
			    sizeof(ioc));
		}
		break;
	default:
		error = FUNC6(ifp, command, data);
	}

	return (error);
}
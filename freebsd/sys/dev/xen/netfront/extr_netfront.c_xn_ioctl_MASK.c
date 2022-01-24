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
typedef  int u_long ;
struct netfront_info {int xn_if_flags; int xn_reset; int /*<<< orphan*/  sc_media; int /*<<< orphan*/  xbdev; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int /*<<< orphan*/  if_hwassist; int /*<<< orphan*/  if_mtu; struct netfront_info* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  CSUM_TSO ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 135 
#define  SIOCDELMULTI 134 
#define  SIOCGIFMEDIA 133 
#define  SIOCSIFADDR 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  XN_CSUM_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_info*) ; 
 int /*<<< orphan*/  XST_NIL ; 
 int /*<<< orphan*/  XenbusStateClosing ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct ifnet*,int,scalar_t__) ; 
 int hz ; 
 int FUNC5 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_info*) ; 
 int FUNC7 (struct netfront_info*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC14(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct netfront_info *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *) data;
	device_t dev;
#ifdef INET
	struct ifaddr *ifa = (struct ifaddr *)data;
#endif
	int mask, error = 0, reinit;

	dev = sc->xbdev;

	switch(cmd) {
	case SIOCSIFADDR:
#ifdef INET
		XN_LOCK(sc);
		if (ifa->ifa_addr->sa_family == AF_INET) {
			ifp->if_flags |= IFF_UP;
			if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
				xn_ifinit_locked(sc);
			arp_ifinit(ifp, ifa);
			XN_UNLOCK(sc);
		} else {
			XN_UNLOCK(sc);
#endif
			error = FUNC4(ifp, cmd, data);
#ifdef INET
		}
#endif
		break;
	case SIOCSIFMTU:
		if (ifp->if_mtu == ifr->ifr_mtu)
			break;

		ifp->if_mtu = ifr->ifr_mtu;
		ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
		FUNC10(sc);
		break;
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP) {
			/*
			 * If only the state of the PROMISC flag changed,
			 * then just use the 'set promisc mode' command
			 * instead of reinitializing the entire NIC. Doing
			 * a full re-init means reloading the firmware and
			 * waiting for it to start up, which may take a
			 * second or two.
			 */
			FUNC11(sc);
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC12(sc);
			}
		}
		sc->xn_if_flags = ifp->if_flags;
		FUNC1(sc);
		break;
	case SIOCSIFCAP:
		mask = ifr->ifr_reqcap ^ ifp->if_capenable;
		reinit = 0;

		if (mask & IFCAP_TXCSUM) {
			ifp->if_capenable ^= IFCAP_TXCSUM;
			ifp->if_hwassist ^= XN_CSUM_FEATURES;
		}
		if (mask & IFCAP_TSO4) {
			ifp->if_capenable ^= IFCAP_TSO4;
			ifp->if_hwassist ^= CSUM_TSO;
		}

		if (mask & (IFCAP_RXCSUM | IFCAP_LRO)) {
			/* These Rx features require us to renegotiate. */
			reinit = 1;

			if (mask & IFCAP_RXCSUM)
				ifp->if_capenable ^= IFCAP_RXCSUM;
			if (mask & IFCAP_LRO)
				ifp->if_capenable ^= IFCAP_LRO;
		}

		if (reinit == 0)
			break;

		/*
		 * We must reset the interface so the backend picks up the
		 * new features.
		 */
		FUNC3(sc->xbdev,
		    "performing interface reset due to feature change\n");
		FUNC0(sc);
		FUNC6(sc);
		sc->xn_reset = true;
		/*
		 * NB: the pending packet queue is not flushed, since
		 * the interface should still support the old options.
		 */
		FUNC1(sc);
		/*
		 * Delete the xenstore nodes that export features.
		 *
		 * NB: There's a xenbus state called
		 * "XenbusStateReconfiguring", which is what we should set
		 * here. Sadly none of the backends know how to handle it,
		 * and simply disconnect from the frontend, so we will just
		 * switch back to XenbusStateInitialising in order to force
		 * a reconnection.
		 */
		FUNC13(XST_NIL, FUNC8(dev), "feature-gso-tcpv4");
		FUNC13(XST_NIL, FUNC8(dev), "feature-no-csum-offload");
		FUNC9(dev, XenbusStateClosing);

		/*
		 * Wait for the frontend to reconnect before returning
		 * from the ioctl. 30s should be more than enough for any
		 * sane backend to reconnect.
		 */
		error = FUNC7(sc, 0, "xn_rst", 30*hz);
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC5(ifp, ifr, &sc->sc_media, cmd);
		break;
	default:
		error = FUNC4(ifp, cmd, data);
	}

	return (error);
}
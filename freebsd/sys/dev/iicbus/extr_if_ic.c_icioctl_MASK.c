#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_6__ {int /*<<< orphan*/  sa_family; } ;
struct ifreq {TYPE_3__ ifr_addr; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int if_drv_flags; struct ic_softc* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct ic_softc {int /*<<< orphan*/  ic_lock; TYPE_2__* ic_ifp; int /*<<< orphan*/  ic_dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  if_mtu; } ;
struct TYPE_4__ {int sa_family; } ;

/* Variables and functions */
#define  AF_INET 135 
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 int IIC_INTR ; 
 int IIC_WAIT ; 
#define  SIOCADDMULTI 134 
#define  SIOCAIFADDR 133 
#define  SIOCDELMULTI 132 
#define  SIOCGIFMTU 131 
#define  SIOCSIFADDR 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct ic_softc *sc = ifp->if_softc;
	device_t icdev = sc->ic_dev;
	device_t parent = FUNC0(icdev);
	struct ifaddr *ifa = (struct ifaddr *)data;
	struct ifreq *ifr = (struct ifreq *)data;
	int error;

	switch (cmd) {

	case SIOCAIFADDR:
	case SIOCSIFADDR:
		if (ifa->ifa_addr->sa_family != AF_INET)
			return (EAFNOSUPPORT);
		FUNC5(&sc->ic_lock);
		ifp->if_flags |= IFF_UP;
		goto locked;
	case SIOCSIFFLAGS:
		FUNC5(&sc->ic_lock);
	locked:
		if ((!(ifp->if_flags & IFF_UP)) &&
		    (ifp->if_drv_flags & IFF_DRV_RUNNING)) {

			/* XXX disable PCF */
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(&sc->ic_lock);

			/* IFF_UP is not set, try to release the bus anyway */
			FUNC2(parent, icdev);
			break;
		}
		if (((ifp->if_flags & IFF_UP)) &&
		    (!(ifp->if_drv_flags & IFF_DRV_RUNNING))) {
			FUNC6(&sc->ic_lock);
			if ((error = FUNC3(parent, icdev,
			    IIC_WAIT | IIC_INTR)))
				return (error);
			FUNC5(&sc->ic_lock);
			FUNC4(parent, IIC_FASTEST, 0, NULL);
			ifp->if_drv_flags |= IFF_DRV_RUNNING;
		}
		FUNC6(&sc->ic_lock);
		break;

	case SIOCSIFMTU:
		FUNC1(sc, ifr->ifr_mtu);
		break;

	case SIOCGIFMTU:
		FUNC5(&sc->ic_lock);
		ifr->ifr_mtu = sc->ic_ifp->if_mtu;
		FUNC6(&sc->ic_lock);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (ifr == NULL)
			return (EAFNOSUPPORT);		/* XXX */
		switch (ifr->ifr_addr.sa_family) {
		case AF_INET:
			break;
		default:
			return (EAFNOSUPPORT);
		}
		break;
	default:
		return (EINVAL);
	}
	return (0);
}
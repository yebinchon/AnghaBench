#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int /*<<< orphan*/  ifr_mtu; int /*<<< orphan*/  ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int /*<<< orphan*/  if_capenable; TYPE_2__* if_softc; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct TYPE_6__ {int if_flags; int /*<<< orphan*/  media; int /*<<< orphan*/ * miibus; } ;
typedef  TYPE_2__ cvm_oct_private_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCGIFMEDIA 133 
#define  SIOCSIFADDR 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct ifaddr*) ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	cvm_oct_private_t *priv;
	struct mii_data *mii;
	struct ifreq *ifr;
#ifdef INET
	struct ifaddr *ifa;
#endif
	int error;

	priv = ifp->if_softc;
	ifr = (struct ifreq *)data;
#ifdef INET
	ifa = (struct ifaddr *)data;
#endif

	switch (cmd) {
	case SIOCSIFADDR:
#ifdef INET
		/*
		 * Avoid reinitialization unless it's necessary.
		 */
		if (ifa->ifa_addr->sa_family == AF_INET) {
			ifp->if_flags |= IFF_UP;
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
				octe_init(priv);
			arp_ifinit(ifp, ifa);

			return (0);
		}
#endif
		error = FUNC3(ifp, cmd, data);
		if (error != 0)
			return (error);
		return (0);

	case SIOCSIFFLAGS:
		if (ifp->if_flags == priv->if_flags)
			return (0);
		if ((ifp->if_flags & IFF_UP) != 0) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
				FUNC5(priv);
		} else {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
				FUNC6(priv);
		}
		priv->if_flags = ifp->if_flags;
		return (0);
	
	case SIOCSIFCAP:
		/*
		 * Just change the capabilities in software, currently none
		 * require reprogramming hardware, they just toggle whether we
		 * make use of already-present facilities in software.
		 */
		ifp->if_capenable = ifr->ifr_reqcap;
		return (0);

	case SIOCSIFMTU:
		error = FUNC1(ifp, ifr->ifr_mtu);
		if (error != 0)
			return (EINVAL);
		return (0);

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		if (priv->miibus != NULL) {
			mii = FUNC2(priv->miibus);
			error = FUNC4(ifp, ifr, &mii->mii_media, cmd);
			if (error != 0)
				return (error);
			return (0);
		}
		error = FUNC4(ifp, ifr, &priv->media, cmd);
		if (error != 0)
			return (error);
		return (0);
	
	default:
		error = FUNC3(ifp, cmd, data);
		if (error != 0)
			return (error);
		return (0);
	}
}
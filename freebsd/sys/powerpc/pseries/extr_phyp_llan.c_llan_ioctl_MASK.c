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
struct llan_softc {int /*<<< orphan*/  media; int /*<<< orphan*/  io_lock; TYPE_1__* ifp; } ;
struct ifreq {int dummy; } ;
struct ifnet {struct llan_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int FUNC0 (struct ifnet*,int,scalar_t__) ; 
 int FUNC1 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct llan_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	int err = 0;
	struct llan_softc *sc = ifp->if_softc;

	switch (cmd) {
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC3(&sc->io_lock);
		if ((sc->ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
			FUNC2(sc);
		FUNC4(&sc->io_lock);
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		err = FUNC1(ifp, (struct ifreq *)data, &sc->media, cmd);
		break;
	case SIOCSIFFLAGS:
	default:
		err = FUNC0(ifp, cmd, data);
		break;
	}

	return (err);
}
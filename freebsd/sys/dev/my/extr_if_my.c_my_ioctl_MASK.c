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
struct my_softc {int /*<<< orphan*/  ifmedia; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct my_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*) ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int FUNC2 (struct ifnet*,int,scalar_t__) ; 
 int FUNC3 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct my_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct my_softc*) ; 

__attribute__((used)) static int
FUNC7(struct ifnet * ifp, u_long command, caddr_t data)
{
	struct my_softc *sc = ifp->if_softc;
	struct ifreq   *ifr = (struct ifreq *) data;
	int             error;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		if (ifp->if_flags & IFF_UP)
			FUNC4(sc);
		else if (ifp->if_drv_flags & IFF_DRV_RUNNING)
			FUNC6(sc);
		FUNC1(sc);
		error = 0;
		break;
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		FUNC0(sc);
		FUNC5(sc);
		FUNC1(sc);
		error = 0;
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		error = FUNC3(ifp, ifr, &sc->ifmedia, command);
		break;
	default:
		error = FUNC2(ifp, command, data);
		break;
	}
	return (error);
}
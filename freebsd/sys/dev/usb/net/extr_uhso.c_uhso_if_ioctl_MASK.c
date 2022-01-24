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
struct uhso_softc {int /*<<< orphan*/  sc_mtx; } ;
struct ifnet {int if_flags; int if_drv_flags; struct uhso_softc* if_softc; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 131 
#define  SIOCDELMULTI 130 
#define  SIOCSIFADDR 129 
#define  SIOCSIFFLAGS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uhso_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct uhso_softc*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct uhso_softc *sc;

	sc = ifp->if_softc;

	switch (cmd) {
	case SIOCSIFFLAGS:
		if (ifp->if_flags & IFF_UP) {
			if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
				FUNC2(sc);
			}
		}
		else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
				FUNC0(&sc->sc_mtx);
				FUNC3(sc);
				FUNC1(&sc->sc_mtx);
			}
		}
		break;
	case SIOCSIFADDR:
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		break;
	default:
		return (EINVAL);
	}
	return (0);
}
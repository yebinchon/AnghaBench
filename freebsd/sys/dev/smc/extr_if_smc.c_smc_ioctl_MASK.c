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
struct smc_softc {int /*<<< orphan*/  (* smc_mii_mediaioctl ) (struct smc_softc*,struct ifreq*,int) ;int /*<<< orphan*/  (* smc_mii_mediachg ) (struct smc_softc*) ;} ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct smc_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCADDMULTI 132 
#define  SIOCDELMULTI 131 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int FUNC2 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_softc*,struct ifreq*,int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct smc_softc	*sc;
	int			error;

	sc = ifp->if_softc;
	error = 0;

	switch (cmd) {
	case SIOCSIFFLAGS:
		if ((ifp->if_flags & IFF_UP) == 0 &&
		    (ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
			FUNC0(sc);
			FUNC4(sc);
			FUNC1(sc);
		} else {
			FUNC3(sc);
			if (sc->smc_mii_mediachg != NULL)
				sc->smc_mii_mediachg(sc);
		}
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		/* XXX
		SMC_LOCK(sc);
		smc_setmcast(sc);
		SMC_UNLOCK(sc);
		*/
		error = EINVAL;
		break;

	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		if (sc->smc_mii_mediaioctl == NULL) {
			error = EINVAL;
			break;
		}
		sc->smc_mii_mediaioctl(sc, (struct ifreq *)data, cmd);
		break;

	default:
		error = FUNC2(ifp, cmd, data);
		break;
	}

	return (error);
}
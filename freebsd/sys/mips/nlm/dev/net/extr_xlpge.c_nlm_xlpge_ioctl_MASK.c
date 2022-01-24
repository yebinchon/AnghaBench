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
struct nlm_xlpge_softc {int if_flags; int /*<<< orphan*/ * mii_bus; int /*<<< orphan*/  link; } ;
struct mii_data {int /*<<< orphan*/  mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct nlm_xlpge_softc* if_softc; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NLM_LINK_DOWN ; 
 int /*<<< orphan*/  NLM_LINK_UP ; 
#define  SIOCGIFMEDIA 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMEDIA 128 
 int /*<<< orphan*/  FUNC0 (struct nlm_xlpge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlm_xlpge_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_xlpge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlm_xlpge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct nlm_xlpge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct nlm_xlpge_softc*) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct mii_data		*mii;
	struct nlm_xlpge_softc	*sc;
	struct ifreq		*ifr;
	int			error;

	sc = ifp->if_softc;
	error = 0;
	ifr = (struct ifreq *)data;

	switch (command) {
	case SIOCSIFFLAGS:
		FUNC0(sc);
		sc->if_flags = ifp->if_flags;
		if (ifp->if_flags & IFF_UP) {
			if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
				FUNC5(sc);
			else
				FUNC8(sc);
			FUNC6(sc);
			sc->link = NLM_LINK_UP;
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC7(sc);
			sc->link = NLM_LINK_DOWN;
		}
		FUNC1(sc);
		error = 0;
		break;
	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		if (sc->mii_bus != NULL) {
			mii = FUNC2(sc->mii_bus);
			error = FUNC4(ifp, ifr, &mii->mii_media,
			    command);
		}
		break;
	default:
		error = FUNC3(ifp, command, data);
		break;
	}

	return (error);
}
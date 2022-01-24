#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct ifreq {int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int /*<<< orphan*/  if_mtu; struct dtsec_softc* if_softc; } ;
struct dtsec_softc {TYPE_2__* sc_mii; TYPE_1__* sc_ifnet; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  mii_media; } ;
struct TYPE_3__ {int if_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct dtsec_softc*) ; 
 int EINVAL ; 
 int IFF_UP ; 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int FUNC2 (struct dtsec_softc*) ; 
 int FUNC3 (struct dtsec_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct dtsec_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int FUNC6 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, u_long command, caddr_t data)
{
	struct dtsec_softc *sc;
	struct ifreq *ifr;
	int error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *)data;
	error = 0;

	/* Basic functionality to achieve media status reports */
	switch (command) {
	case SIOCSIFMTU:
		FUNC0(sc);
		if (FUNC4(sc, ifr->ifr_mtu))
			ifp->if_mtu = ifr->ifr_mtu;
		else
			error = EINVAL;
		FUNC1(sc);
		break;
	case SIOCSIFFLAGS:
		FUNC0(sc);

		if (sc->sc_ifnet->if_flags & IFF_UP)
			error = FUNC3(sc);
		else
			error = FUNC2(sc);

		FUNC1(sc);
		break;

	case SIOCGIFMEDIA:
	case SIOCSIFMEDIA:
		error = FUNC6(ifp, ifr, &sc->sc_mii->mii_media,
		    command);
		break;

	default:
		error = FUNC5(ifp, command, data);
	}

	return (error);
}
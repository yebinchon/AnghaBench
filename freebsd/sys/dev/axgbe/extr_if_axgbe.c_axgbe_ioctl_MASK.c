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
struct ifreq {int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {struct axgbe_softc* if_softc; } ;
struct axgbe_softc {int /*<<< orphan*/  media; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
 int /*<<< orphan*/  ETHERMTU_JUMBO ; 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int FUNC0 (struct ifnet*,unsigned long,scalar_t__) ; 
 int FUNC1 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct ifnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct ifnet *ifp, unsigned long command, caddr_t data)
{
	struct axgbe_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *)data;
	int error;

	switch(command) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > ETHERMTU_JUMBO)
			error = EINVAL;
		else
			error = FUNC2(ifp, ifr->ifr_mtu);
		break;
	case SIOCSIFFLAGS:
		error = 0;
		break;
	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC1(ifp, ifr, &sc->media, command);
		break;
	default:
		error = FUNC0(ifp, command, data);
		break;
	}

	return (error);
}
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
struct vxlan_softc {int /*<<< orphan*/  vxl_media; } ;
struct ifreq {int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int /*<<< orphan*/  if_mtu; struct vxlan_softc* if_softc; } ;
struct ifdrv {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETHERMIN ; 
#define  SIOCADDMULTI 135 
#define  SIOCDELMULTI 134 
#define  SIOCGDRVSPEC 133 
#define  SIOCGIFMEDIA 132 
#define  SIOCSDRVSPEC 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  VXLAN_MAX_MTU ; 
 int FUNC0 (struct ifnet*,int,scalar_t__) ; 
 int FUNC1 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct vxlan_softc*,struct ifdrv*,int) ; 
 int FUNC3 (struct vxlan_softc*) ; 

__attribute__((used)) static int
FUNC4(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct vxlan_softc *sc;
	struct ifreq *ifr;
	struct ifdrv *ifd;
	int error;

	sc = ifp->if_softc;
	ifr = (struct ifreq *) data;
	ifd = (struct ifdrv *) data;

	error = 0;

	switch (cmd) {
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		break;

	case SIOCGDRVSPEC:
	case SIOCSDRVSPEC:
		error = FUNC2(sc, ifd, cmd == SIOCGDRVSPEC);
		break;

	case SIOCSIFFLAGS:
		error = FUNC3(sc);
		break;

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		error = FUNC1(ifp, ifr, &sc->vxl_media, cmd);
		break;

	case SIOCSIFMTU:
		if (ifr->ifr_mtu < ETHERMIN || ifr->ifr_mtu > VXLAN_MAX_MTU)
			error = EINVAL;
		else
			ifp->if_mtu = ifr->ifr_mtu;
		break;

	default:
		error = FUNC0(ifp, cmd, data);
		break;
	}

	return (error);
}
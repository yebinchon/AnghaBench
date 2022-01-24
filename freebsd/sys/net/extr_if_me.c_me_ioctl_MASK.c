#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_4__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct me_softc {int /*<<< orphan*/  me_fibnum; TYPE_1__ me_dst; TYPE_1__ me_src; } ;
struct in_aliasreq {struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_addr; } ;
struct ifreq {int ifr_mtu; int /*<<< orphan*/  ifr_fib; int /*<<< orphan*/  ifr_addr; } ;
struct ifnet {int if_mtu; struct me_softc* if_softc; int /*<<< orphan*/  if_flags; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_5__ {int /*<<< orphan*/  td_ucred; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (struct me_softc*) ; 
 int /*<<< orphan*/  PRIV_NET_GRE ; 
#define  SIOCADDMULTI 138 
#define  SIOCDELMULTI 137 
#define  SIOCDIFPHYADDR 136 
#define  SIOCGIFPDSTADDR 135 
#define  SIOCGIFPSRCADDR 134 
#define  SIOCGTUNFIB 133 
#define  SIOCSIFADDR 132 
#define  SIOCSIFFLAGS 131 
#define  SIOCSIFMTU 130 
#define  SIOCSIFPHYADDR 129 
#define  SIOCSTUNFIB 128 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  FUNC1 (struct me_softc*) ; 
 int /*<<< orphan*/  me_ioctl_sx ; 
 int FUNC2 (struct me_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt_numfibs ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct ifreq *ifr = (struct ifreq *)data;
	struct sockaddr_in *src, *dst;
	struct me_softc *sc;
	int error;

	switch (cmd) {
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < 576)
			return (EINVAL);
		ifp->if_mtu = ifr->ifr_mtu;
		return (0);
	case SIOCSIFADDR:
		ifp->if_flags |= IFF_UP;
	case SIOCSIFFLAGS:
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		return (0);
	}
	FUNC7(&me_ioctl_sx);
	sc = ifp->if_softc;
	if (sc == NULL) {
		error = ENXIO;
		goto end;
	}
	error = 0;
	switch (cmd) {
	case SIOCSIFPHYADDR:
		src = &((struct in_aliasreq *)data)->ifra_addr;
		dst = &((struct in_aliasreq *)data)->ifra_dstaddr;
		if (src->sin_family != dst->sin_family ||
		    src->sin_family != AF_INET ||
		    src->sin_len != dst->sin_len ||
		    src->sin_len != sizeof(struct sockaddr_in)) {
			error = EINVAL;
			break;
		}
		if (src->sin_addr.s_addr == INADDR_ANY ||
		    dst->sin_addr.s_addr == INADDR_ANY) {
			error = EADDRNOTAVAIL;
			break;
		}
		error = FUNC2(sc, src->sin_addr.s_addr,
		    dst->sin_addr.s_addr);
		break;
	case SIOCDIFPHYADDR:
		FUNC1(sc);
		break;
	case SIOCGIFPSRCADDR:
	case SIOCGIFPDSTADDR:
		if (!FUNC0(sc)) {
			error = EADDRNOTAVAIL;
			break;
		}
		src = (struct sockaddr_in *)&ifr->ifr_addr;
		FUNC3(src, 0, sizeof(*src));
		src->sin_family = AF_INET;
		src->sin_len = sizeof(*src);
		switch (cmd) {
		case SIOCGIFPSRCADDR:
			src->sin_addr = sc->me_src;
			break;
		case SIOCGIFPDSTADDR:
			src->sin_addr = sc->me_dst;
			break;
		}
		error = FUNC4(curthread->td_ucred, FUNC6(src));
		if (error != 0)
			FUNC3(src, 0, sizeof(*src));
		break;
	case SIOCGTUNFIB:
		ifr->ifr_fib = sc->me_fibnum;
		break;
	case SIOCSTUNFIB:
		if ((error = FUNC5(curthread, PRIV_NET_GRE)) != 0)
			break;
		if (ifr->ifr_fib >= rt_numfibs)
			error = EINVAL;
		else
			sc->me_fibnum = ifr->ifr_fib;
		break;
	default:
		error = EINVAL;
		break;
	}
end:
	FUNC8(&me_ioctl_sx);
	return (error);
}
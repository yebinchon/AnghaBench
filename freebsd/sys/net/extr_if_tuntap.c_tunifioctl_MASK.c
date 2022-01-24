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
struct tuntap_softc {int tun_flags; int tun_pid; } ;
struct ifstat {char* ascii; } ;
struct ifreq {int /*<<< orphan*/  ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int /*<<< orphan*/  if_capenable; int /*<<< orphan*/  if_mtu; struct tuntap_softc* if_softc; } ;
struct ifmediareq {int ifm_count; int /*<<< orphan*/  ifm_ulist; void* ifm_active; void* ifm_current; int /*<<< orphan*/  ifm_status; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 void* IFM_ETHER ; 
#define  SIOCADDMULTI 135 
#define  SIOCDELMULTI 134 
#define  SIOCGIFMEDIA 133 
#define  SIOCGIFSTATUS 132 
#define  SIOCSIFADDR 131 
#define  SIOCSIFCAP 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,char*) ; 
 int TUN_L2 ; 
 int /*<<< orphan*/  FUNC1 (struct tuntap_softc*) ; 
 int TUN_OPEN ; 
 int /*<<< orphan*/  FUNC2 (struct tuntap_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ifnet*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  tun_ioctl_sx ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC11(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct ifreq *ifr = (struct ifreq *)data;
	struct tuntap_softc *tp;
	struct ifstat *ifs;
	struct ifmediareq	*ifmr;
	int		dummy, error = 0;
	bool		l2tun;

	ifmr = NULL;
	FUNC7(&tun_ioctl_sx);
	tp = ifp->if_softc;
	if (tp == NULL) {
		error = ENXIO;
		goto bad;
	}
	l2tun = (tp->tun_flags & TUN_L2) != 0;
	switch(cmd) {
	case SIOCGIFSTATUS:
		ifs = (struct ifstat *)data;
		FUNC1(tp);
		if (tp->tun_pid)
			FUNC6(ifs->ascii, sizeof(ifs->ascii),
			    "\tOpened by PID %d\n", tp->tun_pid);
		else
			ifs->ascii[0] = '\0';
		FUNC2(tp);
		break;
	case SIOCSIFADDR:
		if (l2tun)
			error = FUNC5(ifp, cmd, data);
		else
			FUNC10(ifp);
		if (error == 0)
		    FUNC0(ifp, "address set\n");
		break;
	case SIOCSIFMTU:
		ifp->if_mtu = ifr->ifr_mtu;
		FUNC0(ifp, "mtu set\n");
		break;
	case SIOCSIFFLAGS:
	case SIOCADDMULTI:
	case SIOCDELMULTI:
		break;
	case SIOCGIFMEDIA:
		if (!l2tun) {
			error = EINVAL;
			break;
		}

		ifmr = (struct ifmediareq *)data;
		dummy = ifmr->ifm_count;
		ifmr->ifm_count = 1;
		ifmr->ifm_status = IFM_AVALID;
		ifmr->ifm_active = IFM_ETHER;
		if (tp->tun_flags & TUN_OPEN)
			ifmr->ifm_status |= IFM_ACTIVE;
		ifmr->ifm_current = ifmr->ifm_active;
		if (dummy >= 1) {
			int media = IFM_ETHER;
			error = FUNC4(&media, ifmr->ifm_ulist, sizeof(int));
		}
		break;
	case SIOCSIFCAP:
		FUNC1(tp);
		ifp->if_capenable = ifr->ifr_reqcap;
		FUNC9(ifp);
		FUNC2(tp);
		FUNC3(ifp);
		break;
	default:
		if (l2tun) {
			error = FUNC5(ifp, cmd, data);
		} else {
			error = EINVAL;
		}
	}
bad:
	FUNC8(&tun_ioctl_sx);
	return (error);
}
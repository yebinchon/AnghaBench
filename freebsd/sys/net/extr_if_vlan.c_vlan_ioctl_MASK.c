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
typedef  int /*<<< orphan*/  vlr ;
typedef  int u_long ;
struct vlanreq {char* vlr_parent; int /*<<< orphan*/  vlr_tag; } ;
struct ifvlantrunk {int dummy; } ;
struct ifvlan {int ifv_pcp; int /*<<< orphan*/  ifv_capenable; int /*<<< orphan*/  ifv_vid; scalar_t__ ifv_mtufudge; scalar_t__ ifv_mintu; } ;
struct TYPE_4__ {int /*<<< orphan*/ * sa_data; } ;
struct ifreq {int ifr_vlan_pcp; int /*<<< orphan*/  ifr_reqcap; scalar_t__ ifr_mtu; TYPE_2__ ifr_addr; } ;
struct ifnet {int (* if_ioctl ) (struct ifnet*,int const,scalar_t__) ;int if_pcp; int /*<<< orphan*/  if_home_vnet; int /*<<< orphan*/  if_vnet; int /*<<< orphan*/  if_xname; scalar_t__ if_mtu; int /*<<< orphan*/  if_addrlen; int /*<<< orphan*/  if_flags; struct ifvlan* if_softc; } ;
struct ifmediareq {int ifm_count; int /*<<< orphan*/  ifm_ulist; struct vlanreq ifm_current; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
struct epoch_tracker {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  IFNET_EVENT_PCP ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 struct ifnet* FUNC4 (struct ifvlan*) ; 
 int /*<<< orphan*/  PRIV_NET_SETVLANPCP ; 
#define  SIOCADDMULTI 140 
#define  SIOCDELMULTI 139 
#define  SIOCGETVLAN 138 
#define  SIOCGIFADDR 137 
#define  SIOCGIFMEDIA 136 
#define  SIOCGVLANPCP 135 
#define  SIOCSETVLAN 134 
#define  SIOCSIFADDR 133 
#define  SIOCSIFCAP 132 
#define  SIOCSIFFLAGS 131 
#define  SIOCSIFMEDIA 130 
#define  SIOCSIFMTU 129 
#define  SIOCSVLANPCP 128 
 struct ifvlantrunk* FUNC5 (struct ifvlan*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifvlantrunk*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifvlantrunk*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vlanreq*,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct vlanreq*,int) ; 
 int FUNC16 (struct vlanreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*) ; 
 int /*<<< orphan*/  ifnet_event ; 
 int /*<<< orphan*/  FUNC19 (struct ifreq*) ; 
 struct ifnet* FUNC20 (char*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (struct ifnet*,int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct ifvlan*) ; 
 int FUNC25 (struct ifvlan*,struct ifnet*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct ifnet*,int) ; 
 int FUNC27 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC28 (struct ifvlan*) ; 
 int /*<<< orphan*/  FUNC29 (struct ifnet*) ; 

__attribute__((used)) static int
FUNC30(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct ifnet *p;
	struct ifreq *ifr;
	struct ifaddr *ifa;
	struct ifvlan *ifv;
	struct ifvlantrunk *trunk;
	struct vlanreq vlr;
	int error = 0;

	ifr = (struct ifreq *)data;
	ifa = (struct ifaddr *) data;
	ifv = ifp->if_softc;

	switch (cmd) {
	case SIOCSIFADDR:
		ifp->if_flags |= IFF_UP;
#ifdef INET
		if (ifa->ifa_addr->sa_family == AF_INET)
			arp_ifinit(ifp, ifa);
#endif
		break;
	case SIOCGIFADDR:
		FUNC13(FUNC1(ifp), &ifr->ifr_addr.sa_data[0],
		    ifp->if_addrlen);
		break;
	case SIOCGIFMEDIA:
		FUNC8();
		if (FUNC5(ifv) != NULL) {
			p = FUNC4(ifv);
			FUNC17(p);
			error = (*p->if_ioctl)(p, SIOCGIFMEDIA, data);
			FUNC18(p);
			/* Limit the result to the parent's current config. */
			if (error == 0) {
				struct ifmediareq *ifmr;

				ifmr = (struct ifmediareq *)data;
				if (ifmr->ifm_count >= 1 && ifmr->ifm_ulist) {
					ifmr->ifm_count = 1;
					error = FUNC16(&ifmr->ifm_current,
						ifmr->ifm_ulist,
						sizeof(int));
				}
			}
		} else {
			error = EINVAL;
		}
		FUNC9();
		break;

	case SIOCSIFMEDIA:
		error = EINVAL;
		break;

	case SIOCSIFMTU:
		/*
		 * Set the interface MTU.
		 */
		FUNC8();
		trunk = FUNC5(ifv);
		if (trunk != NULL) {
			FUNC6(trunk);
			if (ifr->ifr_mtu >
			     (FUNC4(ifv)->if_mtu - ifv->ifv_mtufudge) ||
			    ifr->ifr_mtu <
			     (ifv->ifv_mintu - ifv->ifv_mtufudge))
				error = EINVAL;
			else
				ifp->if_mtu = ifr->ifr_mtu;
			FUNC7(trunk);
		} else
			error = EINVAL;
		FUNC9();
		break;

	case SIOCSETVLAN:
#ifdef VIMAGE
		/*
		 * XXXRW/XXXBZ: The goal in these checks is to allow a VLAN
		 * interface to be delegated to a jail without allowing the
		 * jail to change what underlying interface/VID it is
		 * associated with.  We are not entirely convinced that this
		 * is the right way to accomplish that policy goal.
		 */
		if (ifp->if_vnet != ifp->if_home_vnet) {
			error = EPERM;
			break;
		}
#endif
		error = FUNC15(FUNC19(ifr), &vlr, sizeof(vlr));
		if (error)
			break;
		if (vlr.vlr_parent[0] == '\0') {
			FUNC29(ifp);
			break;
		}
		p = FUNC20(vlr.vlr_parent);
		if (p == NULL) {
			error = ENOENT;
			break;
		}
		error = FUNC25(ifv, p, vlr.vlr_tag);
		FUNC18(p);
		break;

	case SIOCGETVLAN:
#ifdef VIMAGE
		if (ifp->if_vnet != ifp->if_home_vnet) {
			error = EPERM;
			break;
		}
#endif
		FUNC14(&vlr, sizeof(vlr));
		FUNC8();
		if (FUNC5(ifv) != NULL) {
			FUNC22(vlr.vlr_parent, FUNC4(ifv)->if_xname,
			    sizeof(vlr.vlr_parent));
			vlr.vlr_tag = ifv->ifv_vid;
		}
		FUNC9();
		error = FUNC16(&vlr, FUNC19(ifr), sizeof(vlr));
		break;
		
	case SIOCSIFFLAGS:
		/*
		 * We should propagate selected flags to the parent,
		 * e.g., promiscuous mode.
		 */
		FUNC10();
		if (FUNC5(ifv) != NULL)
			error = FUNC26(ifp, 1);
		FUNC11();
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		/*
		 * If we don't have a parent, just remember the membership for
		 * when we do.
		 *
		 * XXX We need the rmlock here to avoid sleeping while
		 * holding in6_multi_mtx.
		 */
		FUNC10();
		trunk = FUNC5(ifv);
		if (trunk != NULL)
			error = FUNC27(ifp);
		FUNC11();

		break;
	case SIOCGVLANPCP:
#ifdef VIMAGE
		if (ifp->if_vnet != ifp->if_home_vnet) {
			error = EPERM;
			break;
		}
#endif
		ifr->ifr_vlan_pcp = ifv->ifv_pcp;
		break;

	case SIOCSVLANPCP:
#ifdef VIMAGE
		if (ifp->if_vnet != ifp->if_home_vnet) {
			error = EPERM;
			break;
		}
#endif
		error = FUNC21(curthread, PRIV_NET_SETVLANPCP);
		if (error)
			break;
		if (ifr->ifr_vlan_pcp > 7) {
			error = EINVAL;
			break;
		}
		ifv->ifv_pcp = ifr->ifr_vlan_pcp;
		ifp->if_pcp = ifv->ifv_pcp;
		FUNC28(ifv);
		/* broadcast event about PCP change */
		FUNC0(ifnet_event, ifp, IFNET_EVENT_PCP);
		break;

	case SIOCSIFCAP:
		FUNC8();
		ifv->ifv_capenable = ifr->ifr_reqcap;
		trunk = FUNC5(ifv);
		if (trunk != NULL) {
			struct epoch_tracker et;

			FUNC2(et);
			FUNC24(ifv);
			FUNC3(et);
		}
		FUNC9();
		break;

	default:
		error = EINVAL;
		break;
	}

	return (error);
}
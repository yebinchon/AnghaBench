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
typedef  int uint32_t ;
typedef  int u_long ;
struct rcv_queue {int lro_enabled; } ;
struct nicvf {int if_flags; TYPE_2__* qs; struct ifnet* ifp; int /*<<< orphan*/  hw_tso; int /*<<< orphan*/  if_media; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int dummy; } ;
struct ifaddr {TYPE_1__* ifa_addr; } ;
typedef  scalar_t__ caddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {int rq_cnt; struct rcv_queue* rq; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_NOARP ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*) ; 
 int /*<<< orphan*/  NIC_HW_MAX_FRS ; 
 int /*<<< orphan*/  NIC_HW_MIN_FRS ; 
#define  SIOCADDMULTI 135 
#define  SIOCDELMULTI 134 
#define  SIOCGIFMEDIA 133 
#define  SIOCSIFADDR 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,struct ifaddr*) ; 
 int FUNC3 (struct ifnet*,int,scalar_t__) ; 
 int FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct ifnet*) ; 
 int FUNC6 (struct ifnet*) ; 
 struct nicvf* FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int) ; 
 int FUNC11 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC13 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC14 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC15 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC16 (struct nicvf*) ; 
 int FUNC17 (struct nicvf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct nicvf *nic;
	struct rcv_queue *rq;
	struct ifreq *ifr;
	uint32_t flags;
	int mask, err;
	int rq_idx;
#if defined(INET) || defined(INET6)
	struct ifaddr *ifa;
	boolean_t avoid_reset = FALSE;
#endif

	nic = FUNC7(ifp);
	ifr = (struct ifreq *)data;
#if defined(INET) || defined(INET6)
	ifa = (struct ifaddr *)data;
#endif
	err = 0;
	switch (cmd) {
	case SIOCSIFADDR:
#ifdef INET
		if (ifa->ifa_addr->sa_family == AF_INET)
			avoid_reset = TRUE;
#endif
#ifdef INET6
		if (ifa->ifa_addr->sa_family == AF_INET6)
			avoid_reset = TRUE;
#endif

#if defined(INET) || defined(INET6)
		/* Avoid reinitialization unless it's necessary */
		if (avoid_reset) {
			if_setflagbits(ifp, IFF_UP, 0);
			if (!(if_getdrvflags(ifp) & IFF_DRV_RUNNING))
				nicvf_if_init(nic);
#ifdef INET
			if (!(if_getflags(ifp) & IFF_NOARP))
				arp_ifinit(ifp, ifa);
#endif

			return (0);
		}
#endif
		err = FUNC3(ifp, cmd, data);
		break;
	case SIOCSIFMTU:
		if (ifr->ifr_mtu < NIC_HW_MIN_FRS ||
		    ifr->ifr_mtu > NIC_HW_MAX_FRS) {
			err = EINVAL;
		} else {
			FUNC0(nic);
			err = FUNC17(nic, ifr->ifr_mtu);
			if (err == 0)
				FUNC9(ifp, ifr->ifr_mtu);
			FUNC1(nic);
		}
		break;
	case SIOCSIFFLAGS:
		FUNC0(nic);
		flags = FUNC6(ifp);
		if (flags & IFF_UP) {
			if (FUNC5(ifp) & IFF_DRV_RUNNING) {
				if ((flags ^ nic->if_flags) & IFF_PROMISC) {
					/* Change promiscous mode */
#if 0
					/* ARM64TODO */
					nicvf_set_promiscous(nic);
#endif
				}

				if ((flags ^ nic->if_flags) & IFF_ALLMULTI) {
					/* Change multicasting settings */
#if 0
					/* ARM64TODO */
					nicvf_set_multicast(nic);
#endif
				}
			} else {
				FUNC13(nic);
			}
		} else if (FUNC5(ifp) & IFF_DRV_RUNNING)
			FUNC16(nic);

		nic->if_flags = flags;
		FUNC1(nic);
		break;

	case SIOCADDMULTI:
	case SIOCDELMULTI:
		if (FUNC5(ifp) & IFF_DRV_RUNNING) {
#if 0
			NICVF_CORE_LOCK(nic);
			/* ARM64TODO */
			nicvf_set_multicast(nic);
			NICVF_CORE_UNLOCK(nic);
#endif
		}
		break;

	case SIOCSIFMEDIA:
	case SIOCGIFMEDIA:
		err = FUNC11(ifp, ifr, &nic->if_media, cmd);
		break;

	case SIOCSIFCAP:
		mask = FUNC4(ifp) ^ ifr->ifr_reqcap;
		if (mask & IFCAP_VLAN_MTU) {
			/* No work to do except acknowledge the change took. */
			FUNC10(ifp, IFCAP_VLAN_MTU);
		}
		if (mask & IFCAP_TXCSUM)
			FUNC10(ifp, IFCAP_TXCSUM);
		if (mask & IFCAP_RXCSUM)
			FUNC10(ifp, IFCAP_RXCSUM);
		if ((mask & IFCAP_TSO4) && nic->hw_tso)
			FUNC10(ifp, IFCAP_TSO4);
		if (mask & IFCAP_LRO) {
			/*
			 * Lock the driver for a moment to avoid
			 * mismatch in per-queue settings.
			 */
			FUNC0(nic);
			FUNC10(ifp, IFCAP_LRO);
			if ((FUNC5(nic->ifp) & IFF_DRV_RUNNING) != 0) {
				/*
				 * Now disable LRO for subsequent packets.
				 * Atomicity of this change is not necessary
				 * as we don't need precise toggle of this
				 * feature for all threads processing the
				 * completion queue.
				 */
				for (rq_idx = 0;
				    rq_idx < nic->qs->rq_cnt; rq_idx++) {
					rq = &nic->qs->rq[rq_idx];
					rq->lro_enabled = !rq->lro_enabled;
				}
			}
			FUNC1(nic);
		}

		break;

	default:
		err = FUNC3(ifp, cmd, data);
		break;
	}

	return (err);
}
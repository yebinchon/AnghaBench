#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct queue_set {int cq_cnt; int rbdr_cnt; } ;
struct TYPE_2__ {scalar_t__ txq_wake; scalar_t__ txq_stop; } ;
struct nicvf {int /*<<< orphan*/  stats_callout; TYPE_1__ drv_stats; int /*<<< orphan*/  hwaddr; struct ifnet* ifp; struct queue_set* qs; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  NICVF_INTR_RBDR ; 
 int /*<<< orphan*/  NIC_VF_INT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nicvf*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC10 (struct nicvf*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC12 (struct nicvf*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct nicvf*) ; 
 int /*<<< orphan*/  nicvf_tick_stats ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void
FUNC15(struct nicvf *nic)
{
	struct queue_set *qs = nic->qs;
	struct ifnet *ifp;
	int qidx;
	int err;
	caddr_t if_addr;

	FUNC0(nic);
	ifp = nic->ifp;

	if ((FUNC2(ifp) & IFF_DRV_RUNNING) != 0)
		FUNC13(nic);

	err = FUNC9(nic);
	if (err != 0) {
		FUNC4(ifp, "Could not reenable Mbox interrupt\n");
		return;
	}

	/* Get the latest MAC address */
	if_addr = FUNC3(ifp);
	/* Update MAC address if changed */
	if (FUNC6(nic->hwaddr, if_addr, ETHER_ADDR_LEN) != 0) {
		FUNC7(nic->hwaddr, if_addr, ETHER_ADDR_LEN);
		FUNC10(nic, if_addr);
	}

	/* Initialize the queues */
	err = FUNC11(nic);
	if (err != 0)
		goto error;

	/* Make sure queue initialization is written */
	FUNC14();

	FUNC12(nic, NIC_VF_INT, ~0UL);
	/* Enable Qset err interrupt */
	FUNC8(nic, NICVF_INTR_QS_ERR, 0);

	/* Enable completion queue interrupt */
	for (qidx = 0; qidx < qs->cq_cnt; qidx++)
		FUNC8(nic, NICVF_INTR_CQ, qidx);

	/* Enable RBDR threshold interrupt */
	for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
		FUNC8(nic, NICVF_INTR_RBDR, qidx);

	nic->drv_stats.txq_stop = 0;
	nic->drv_stats.txq_wake = 0;

	/* Activate network interface */
	FUNC5(ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);

	/* Schedule callout to update stats */
	FUNC1(&nic->stats_callout, hz, nicvf_tick_stats, nic);

	return;

error:
	/* Something went very wrong. Disable this ifnet for good */
	FUNC5(ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);
}
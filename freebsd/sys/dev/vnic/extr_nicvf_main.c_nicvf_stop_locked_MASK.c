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
struct TYPE_2__ {int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct queue_set {int rbdr_cnt; } ;
struct nicvf {struct ifnet* ifp; int /*<<< orphan*/  stats_callout; struct queue_set* qs; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*) ; 
 int /*<<< orphan*/  NICVF_INTR_MBOX ; 
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  NICVF_INTR_RBDR ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nicvf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nicvf*,union nic_mbx*) ; 

__attribute__((used)) static int
FUNC8(struct nicvf *nic)
{
	struct ifnet *ifp;
	int qidx;
	struct queue_set *qs = nic->qs;
	union nic_mbx mbx = {};

	FUNC0(nic);
	/* Stop callout. Can block here since holding SX lock */
	FUNC1(&nic->stats_callout);

	ifp = nic->ifp;

	mbx.msg.msg = NIC_MBOX_MSG_SHUTDOWN;
	FUNC7(nic, &mbx);

	/* Disable RBDR & QS error interrupts */
	for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
		FUNC5(nic, NICVF_INTR_RBDR, qidx);
		FUNC3(nic, NICVF_INTR_RBDR, qidx);
	}
	FUNC5(nic, NICVF_INTR_QS_ERR, 0);
	FUNC3(nic, NICVF_INTR_QS_ERR, 0);

	/* Deactivate network interface */
	FUNC2(ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);

	/* Free resources */
	FUNC4(nic, FALSE);

	/* Disable HW Qset */
	FUNC6(nic, FALSE);

	/* disable mailbox interrupt */
	FUNC5(nic, NICVF_INTR_MBOX, 0);

	return (0);
}
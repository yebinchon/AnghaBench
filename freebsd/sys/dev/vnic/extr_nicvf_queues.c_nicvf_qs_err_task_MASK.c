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
typedef  int uint64_t ;
struct queue_set {int cq_cnt; int /*<<< orphan*/ * sq; } ;
struct nicvf {int /*<<< orphan*/  ifp; struct queue_set* qs; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int CQ_ERR_MASK ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  NICVF_INTR_CQ ; 
 int /*<<< orphan*/  NICVF_INTR_QS_ERR ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_STATUS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,struct queue_set*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nicvf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC9(void *arg, int pending)
{
	struct nicvf *nic;
	struct queue_set *qs;
	int qidx;
	uint64_t status;
	boolean_t enable = TRUE;

	nic = (struct nicvf *)arg;
	qs = nic->qs;

	/* Deactivate network interface */
	FUNC0(nic->ifp, IFF_DRV_OACTIVE, IFF_DRV_RUNNING);

	/* Check if it is CQ err */
	for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
		status = FUNC5(nic, NIC_QSET_CQ_0_7_STATUS,
		    qidx);
		if ((status & CQ_ERR_MASK) == 0)
			continue;
		/* Process already queued CQEs and reconfig CQ */
		FUNC3(nic, NICVF_INTR_CQ, qidx);
		FUNC6(nic, qidx);
		(void)FUNC2(nic, qidx);
		FUNC1(nic, qs, qidx, enable);
		FUNC8(nic, &qs->sq[qidx], qidx);
		FUNC7(nic, &qs->sq[qidx], qidx);
		FUNC4(nic, NICVF_INTR_CQ, qidx);
	}

	FUNC0(nic->ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);
	/* Re-enable Qset error interrupt */
	FUNC4(nic, NICVF_INTR_QS_ERR, 0);
}
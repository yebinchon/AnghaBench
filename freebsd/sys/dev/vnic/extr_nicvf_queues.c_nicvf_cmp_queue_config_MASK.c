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
typedef  int /*<<< orphan*/  uint64_t ;
struct queue_set {struct cmp_queue* cq; } ;
struct nicvf {int /*<<< orphan*/  cq_coalesce_usecs; } ;
struct cq_cfg {int ena; scalar_t__ avg_con; int /*<<< orphan*/  qsize; scalar_t__ caching; scalar_t__ reset; } ;
struct TYPE_2__ {scalar_t__ phys_base; } ;
struct cmp_queue {int /*<<< orphan*/  thresh; TYPE_1__ dmem; int /*<<< orphan*/  enable; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_QSIZE ; 
 int /*<<< orphan*/  NICVF_CQ_RESET ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_BASE ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_CFG ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_CFG2 ; 
 int /*<<< orphan*/  NIC_QSET_CQ_0_7_THRESH ; 
 int /*<<< orphan*/  FUNC0 (struct nicvf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*,struct queue_set*,int) ; 

__attribute__((used)) static void
FUNC2(struct nicvf *nic, struct queue_set *qs,
    int qidx, boolean_t enable)
{
	struct cmp_queue *cq;
	struct cq_cfg cq_cfg;

	cq = &qs->cq[qidx];
	cq->enable = enable;

	if (!cq->enable) {
		FUNC1(nic, qs, qidx);
		return;
	}

	/* Reset completion queue */
	FUNC0(nic, NIC_QSET_CQ_0_7_CFG, qidx, NICVF_CQ_RESET);

	/* Set completion queue base address */
	FUNC0(nic, NIC_QSET_CQ_0_7_BASE, qidx,
	    (uint64_t)(cq->dmem.phys_base));

	/* Enable Completion queue */
	cq_cfg.ena = 1;
	cq_cfg.reset = 0;
	cq_cfg.caching = 0;
	cq_cfg.qsize = CMP_QSIZE;
	cq_cfg.avg_con = 0;
	FUNC0(nic, NIC_QSET_CQ_0_7_CFG, qidx, *(uint64_t *)&cq_cfg);

	/* Set threshold value for interrupt generation */
	FUNC0(nic, NIC_QSET_CQ_0_7_THRESH, qidx, cq->thresh);
	FUNC0(nic, NIC_QSET_CQ_0_7_CFG2, qidx,
	    nic->cq_coalesce_usecs);
}
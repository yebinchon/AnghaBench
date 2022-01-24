#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t prod; } ;
struct qlnxr_qp {scalar_t__ state; int /*<<< orphan*/  q_lock; TYPE_2__ rq; TYPE_3__* rqe_wr_id; } ;
struct qlnxr_dev {int /*<<< orphan*/  ha; int /*<<< orphan*/  gsi_ll2_handle; int /*<<< orphan*/  rdma_ctx; } ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int /*<<< orphan*/  wr_id; TYPE_1__* sg_list; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  wr_id; TYPE_1__* sg_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ ECORE_ROCE_QP_STATE_RTR ; 
 scalar_t__ ECORE_ROCE_QP_STATE_RTS ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ QLNXR_GSI_MAX_RECV_SGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct qlnxr_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct qlnxr_qp* FUNC4 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC9(struct ib_qp *ibqp,
		struct ib_recv_wr *wr,
		struct ib_recv_wr **bad_wr)
{
	struct qlnxr_dev *dev = FUNC3((ibqp->device));
	struct qlnxr_qp *qp = FUNC4(ibqp);
	unsigned long flags;
	int rc = 0;

	FUNC1(dev->ha, "enter, wr: %p\n", wr);

	if ((qp->state != ECORE_ROCE_QP_STATE_RTR) &&
	    (qp->state != ECORE_ROCE_QP_STATE_RTS)) {
		*bad_wr = wr;
		FUNC0(dev->ha, "exit 0\n");
		return -EINVAL;
	}

	FUNC7(&qp->q_lock, flags);

	while (wr) {
		if (wr->num_sge > QLNXR_GSI_MAX_RECV_SGE) {
			FUNC0(dev->ha, "exit 1\n");
			goto err;
		}

		rc = FUNC2(dev->rdma_ctx,
				dev->gsi_ll2_handle,
				wr->sg_list[0].addr,
				wr->sg_list[0].length,
				0 /* cookie */,
				1 /* notify_fw */);
		if (rc) {
			FUNC0(dev->ha, "exit 2\n");
			goto err;
		}

		FUNC5(&qp->rqe_wr_id[qp->rq.prod], 0,
			sizeof(qp->rqe_wr_id[qp->rq.prod]));
		qp->rqe_wr_id[qp->rq.prod].sg_list[0] = wr->sg_list[0];
		qp->rqe_wr_id[qp->rq.prod].wr_id = wr->wr_id;

		FUNC6(&qp->rq);

		wr = wr->next;
	}

	FUNC8(&qp->q_lock, flags);

	FUNC1(dev->ha, "exit rc = %d\n", rc);
	return rc;
err:

	FUNC8(&qp->q_lock, flags);
	*bad_wr = wr;

	FUNC1(dev->ha, "exit with -ENOMEM\n");
	return -ENOMEM;
}
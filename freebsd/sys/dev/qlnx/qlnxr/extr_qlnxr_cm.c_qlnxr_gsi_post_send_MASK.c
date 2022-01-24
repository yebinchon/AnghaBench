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
struct TYPE_4__ {size_t prod; } ;
struct qlnxr_qp {scalar_t__ state; int /*<<< orphan*/  q_lock; TYPE_2__ sq; TYPE_1__* wqe_wr_id; struct qlnxr_dev* dev; } ;
struct qlnxr_dev {int /*<<< orphan*/  ha; } ;
struct ib_send_wr {scalar_t__ num_sge; scalar_t__ opcode; int send_flags; struct ib_send_wr* next; int /*<<< orphan*/  wr_id; } ;
struct ib_qp {int dummy; } ;
struct ecore_roce_ll2_packet {int dummy; } ;
struct TYPE_3__ {int signaled; int /*<<< orphan*/  opcode; int /*<<< orphan*/  wr_id; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ ECORE_ROCE_QP_STATE_RTS ; 
 int EINVAL ; 
 int IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WC_SEND ; 
 scalar_t__ IB_WR_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ RDMA_MAX_SGE_PER_SQ_WQE ; 
 struct qlnxr_qp* FUNC2 (struct ib_qp*) ; 
 int FUNC3 (struct qlnxr_dev*,struct qlnxr_qp*,struct ib_send_wr*,struct ecore_roce_ll2_packet**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct qlnxr_dev*,struct ecore_roce_ll2_packet*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC8(struct ib_qp *ibqp,
		struct ib_send_wr *wr,
		struct ib_send_wr **bad_wr)
{
	struct ecore_roce_ll2_packet *pkt = NULL;
	struct qlnxr_qp *qp = FUNC2(ibqp);
	struct qlnxr_dev *dev = qp->dev;
	unsigned long flags;
	int rc;

	FUNC1(dev->ha, "exit\n");

	if (qp->state != ECORE_ROCE_QP_STATE_RTS) {
		FUNC0(dev->ha,
			"(qp->state != ECORE_ROCE_QP_STATE_RTS)\n");
		*bad_wr = wr;
		return -EINVAL;
	}

	if (wr->num_sge > RDMA_MAX_SGE_PER_SQ_WQE) {
		FUNC0(dev->ha,
			"(wr->num_sge > RDMA_MAX_SGE_PER_SQ_WQE)\n");
		rc = -EINVAL;
		goto err;
	}

	if (wr->opcode != IB_WR_SEND) {
		FUNC0(dev->ha, "(wr->opcode > IB_WR_SEND)\n");
		rc = -EINVAL;
		goto err;
	}

	FUNC6(&qp->q_lock, flags);

	rc = FUNC3(dev, qp, wr, &pkt);
	if(rc) {
		FUNC7(&qp->q_lock, flags);
		FUNC0(dev->ha, "qlnxr_gsi_build_packet failed\n");
		goto err;
	}

	rc = FUNC5(dev, pkt);

	if (!rc) {
		qp->wqe_wr_id[qp->sq.prod].wr_id = wr->wr_id;
		qp->wqe_wr_id[qp->sq.prod].signaled = 
			!!(wr->send_flags & IB_SEND_SIGNALED);
		qp->wqe_wr_id[qp->sq.prod].opcode = IB_WC_SEND;
		FUNC4(&qp->sq);
		FUNC0(dev->ha, "packet sent over gsi qp\n");
	} else {
		FUNC0(dev->ha, "qlnxr_ll2_post_tx failed\n");
		rc = -EAGAIN;
		*bad_wr = wr;
	}

	FUNC7(&qp->q_lock, flags);

	if (wr->next != NULL) {
		*bad_wr = wr->next;
		rc=-EINVAL;
	}

	FUNC1(dev->ha, "exit\n");
	return rc;

err:
	*bad_wr = wr;
	FUNC1(dev->ha, "exit error\n");
	return rc;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int ackto; int rnr_retry; int /*<<< orphan*/  port_pkey; } ;
struct mthca_qp_context {int mtu_msgmax; TYPE_5__ alt_path; TYPE_5__ pri_path; int /*<<< orphan*/  params1; int /*<<< orphan*/  rnr_nextrecvpsn; int /*<<< orphan*/  params2; int /*<<< orphan*/  remote_qpn; int /*<<< orphan*/  next_send_psn; int /*<<< orphan*/  qkey; int /*<<< orphan*/  flags; } ;
struct mthca_qp_param {struct mthca_qp_context context; } ;
struct TYPE_7__ {int /*<<< orphan*/  max_gs; int /*<<< orphan*/  max; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_gs; int /*<<< orphan*/  max; } ;
struct mthca_qp {scalar_t__ state; scalar_t__ transport; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sq_policy; int /*<<< orphan*/  max_inline_data; TYPE_2__ rq; TYPE_1__ sq; int /*<<< orphan*/  qpn; } ;
struct mthca_mailbox {struct mthca_qp_param* buf; } ;
struct mthca_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; int /*<<< orphan*/  max_recv_wr; int /*<<< orphan*/  max_send_wr; } ;
struct ib_qp_init_attr {int /*<<< orphan*/  sq_sig_type; TYPE_3__ cap; } ;
struct TYPE_9__ {int /*<<< orphan*/  port_num; } ;
struct ib_qp_attr {scalar_t__ qp_state; int path_mtu; int qkey; int rq_psn; int sq_psn; int dest_qp_num; int alt_pkey_index; int pkey_index; int port_num; int sq_draining; int max_rd_atomic; int max_dest_rd_atomic; int min_rnr_timer; int timeout; int retry_cnt; int rnr_retry; int alt_timeout; scalar_t__ cur_qp_state; TYPE_3__ cap; TYPE_4__ alt_ah_attr; int /*<<< orphan*/  alt_port_num; TYPE_4__ ah_attr; int /*<<< orphan*/  qp_access_flags; int /*<<< orphan*/  path_mig_state; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_QPS_RESET ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int MTHCA_QP_STATE_DRAINING ; 
 int FUNC1 (struct mthca_mailbox*) ; 
 scalar_t__ RC ; 
 scalar_t__ UC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mthca_mailbox*) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 struct mthca_dev* FUNC13 (int /*<<< orphan*/ ) ; 
 struct mthca_qp* FUNC14 (struct ib_qp*) ; 

int FUNC15(struct ib_qp *ibqp, struct ib_qp_attr *qp_attr, int qp_attr_mask,
		   struct ib_qp_init_attr *qp_init_attr)
{
	struct mthca_dev *dev = FUNC13(ibqp->device);
	struct mthca_qp *qp = FUNC14(ibqp);
	int err = 0;
	struct mthca_mailbox *mailbox = NULL;
	struct mthca_qp_param *qp_param;
	struct mthca_qp_context *context;
	int mthca_state;

	FUNC7(&qp->mutex);

	if (qp->state == IB_QPS_RESET) {
		qp_attr->qp_state = IB_QPS_RESET;
		goto done;
	}

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox)) {
		err = FUNC1(mailbox);
		goto out;
	}

	err = FUNC3(dev, qp->qpn, 0, mailbox);
	if (err) {
		FUNC6(dev, "QUERY_QP failed (%d)\n", err);
		goto out_mailbox;
	}

	qp_param    = mailbox->buf;
	context     = &qp_param->context;
	mthca_state = FUNC2(context->flags) >> 28;

	qp->state		     = FUNC12(mthca_state);
	qp_attr->qp_state	     = qp->state;
	qp_attr->path_mtu 	     = context->mtu_msgmax >> 5;
	qp_attr->path_mig_state      =
		FUNC10((FUNC2(context->flags) >> 11) & 0x3);
	qp_attr->qkey 		     = FUNC2(context->qkey);
	qp_attr->rq_psn 	     = FUNC2(context->rnr_nextrecvpsn) & 0xffffff;
	qp_attr->sq_psn 	     = FUNC2(context->next_send_psn) & 0xffffff;
	qp_attr->dest_qp_num 	     = FUNC2(context->remote_qpn) & 0xffffff;
	qp_attr->qp_access_flags     =
		FUNC11(FUNC2(context->params2));

	if (qp->transport == RC || qp->transport == UC) {
		FUNC9(dev, &qp_attr->ah_attr, &context->pri_path);
		FUNC9(dev, &qp_attr->alt_ah_attr, &context->alt_path);
		qp_attr->alt_pkey_index =
			FUNC2(context->alt_path.port_pkey) & 0x7f;
		qp_attr->alt_port_num 	= qp_attr->alt_ah_attr.port_num;
	}

	qp_attr->pkey_index = FUNC2(context->pri_path.port_pkey) & 0x7f;
	qp_attr->port_num   =
		(FUNC2(context->pri_path.port_pkey) >> 24) & 0x3;

	/* qp_attr->en_sqd_async_notify is only applicable in modify qp */
	qp_attr->sq_draining = mthca_state == MTHCA_QP_STATE_DRAINING;

	qp_attr->max_rd_atomic = 1 << ((FUNC2(context->params1) >> 21) & 0x7);

	qp_attr->max_dest_rd_atomic =
		1 << ((FUNC2(context->params2) >> 21) & 0x7);
	qp_attr->min_rnr_timer 	    =
		(FUNC2(context->rnr_nextrecvpsn) >> 24) & 0x1f;
	qp_attr->timeout 	    = context->pri_path.ackto >> 3;
	qp_attr->retry_cnt 	    = (FUNC2(context->params1) >> 16) & 0x7;
	qp_attr->rnr_retry 	    = context->pri_path.rnr_retry >> 5;
	qp_attr->alt_timeout 	    = context->alt_path.ackto >> 3;

done:
	qp_attr->cur_qp_state	     = qp_attr->qp_state;
	qp_attr->cap.max_send_wr     = qp->sq.max;
	qp_attr->cap.max_recv_wr     = qp->rq.max;
	qp_attr->cap.max_send_sge    = qp->sq.max_gs;
	qp_attr->cap.max_recv_sge    = qp->rq.max_gs;
	qp_attr->cap.max_inline_data = qp->max_inline_data;

	qp_init_attr->cap	     = qp_attr->cap;
	qp_init_attr->sq_sig_type    = qp->sq_policy;

out_mailbox:
	FUNC5(dev, mailbox);

out:
	FUNC8(&qp->mutex);
	return err;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int ackto_lt; int /*<<< orphan*/  port; int /*<<< orphan*/  pkey_index; } ;
struct mlx5_qp_context {int mtu_msgmax; TYPE_5__ alt_path; int /*<<< orphan*/  params1; TYPE_5__ pri_path; int /*<<< orphan*/  rnr_nextrecvpsn; int /*<<< orphan*/  params2; int /*<<< orphan*/  log_pg_sz_remote_qpn; int /*<<< orphan*/  next_send_psn; int /*<<< orphan*/  qkey; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {scalar_t__ qp_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  mqp; } ;
struct TYPE_7__ {TYPE_1__ base; } ;
struct mlx5_ib_qp {TYPE_3__ ibqp; int /*<<< orphan*/  state; TYPE_2__ trans_qp; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  port_num; } ;
struct ib_qp_attr {int path_mtu; int qkey; int rq_psn; int sq_psn; int dest_qp_num; int sq_draining; int max_rd_atomic; int max_dest_rd_atomic; int min_rnr_timer; int timeout; int retry_cnt; int rnr_retry; int alt_timeout; int /*<<< orphan*/  port_num; void* pkey_index; TYPE_4__ alt_ah_attr; int /*<<< orphan*/  alt_port_num; void* alt_pkey_index; TYPE_4__ ah_attr; int /*<<< orphan*/  qp_access_flags; int /*<<< orphan*/  path_mig_state; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_QP_STATE_SQ_DRAINING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qpc ; 
 int /*<<< orphan*/  query_qp_out ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp,
			 struct ib_qp_attr *qp_attr)
{
	int outlen = FUNC1(query_qp_out);
	struct mlx5_qp_context *context;
	int mlx5_state;
	u32 *outb;
	int err = 0;

	outb = FUNC5(outlen, GFP_KERNEL);
	if (!outb)
		return -ENOMEM;

	err = FUNC6(dev->mdev, &qp->trans_qp.base.mqp, outb,
				 outlen);
	if (err)
		goto out;

	/* FIXME: use MLX5_GET rather than mlx5_qp_context manual struct */
	context = (struct mlx5_qp_context *)FUNC0(query_qp_out, outb, qpc);

	mlx5_state = FUNC3(context->flags) >> 28;

	qp->state		     = FUNC10(mlx5_state);
	qp_attr->path_mtu	     = context->mtu_msgmax >> 5;
	qp_attr->path_mig_state	     =
		FUNC8((FUNC3(context->flags) >> 11) & 0x3);
	qp_attr->qkey		     = FUNC3(context->qkey);
	qp_attr->rq_psn		     = FUNC3(context->rnr_nextrecvpsn) & 0xffffff;
	qp_attr->sq_psn		     = FUNC3(context->next_send_psn) & 0xffffff;
	qp_attr->dest_qp_num	     = FUNC3(context->log_pg_sz_remote_qpn) & 0xffffff;
	qp_attr->qp_access_flags     =
		FUNC9(FUNC3(context->params2));

	if (qp->ibqp.qp_type == IB_QPT_RC || qp->ibqp.qp_type == IB_QPT_UC) {
		FUNC7(dev, &qp_attr->ah_attr, &context->pri_path);
		FUNC7(dev, &qp_attr->alt_ah_attr, &context->alt_path);
		qp_attr->alt_pkey_index =
			FUNC2(context->alt_path.pkey_index);
		qp_attr->alt_port_num	= qp_attr->alt_ah_attr.port_num;
	}

	qp_attr->pkey_index = FUNC2(context->pri_path.pkey_index);
	qp_attr->port_num = context->pri_path.port;

	/* qp_attr->en_sqd_async_notify is only applicable in modify qp */
	qp_attr->sq_draining = mlx5_state == MLX5_QP_STATE_SQ_DRAINING;

	qp_attr->max_rd_atomic = 1 << ((FUNC3(context->params1) >> 21) & 0x7);

	qp_attr->max_dest_rd_atomic =
		1 << ((FUNC3(context->params2) >> 21) & 0x7);
	qp_attr->min_rnr_timer	    =
		(FUNC3(context->rnr_nextrecvpsn) >> 24) & 0x1f;
	qp_attr->timeout	    = context->pri_path.ackto_lt >> 3;
	qp_attr->retry_cnt	    = (FUNC3(context->params1) >> 16) & 0x7;
	qp_attr->rnr_retry	    = (FUNC3(context->params1) >> 13) & 0x7;
	qp_attr->alt_timeout	    = context->alt_path.ackto_lt >> 3;

out:
	FUNC4(outb);
	return err;
}
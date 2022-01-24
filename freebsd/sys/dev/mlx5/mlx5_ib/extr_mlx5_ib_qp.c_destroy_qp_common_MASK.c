#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mlx5_modify_raw_qp_param {int /*<<< orphan*/  operation; } ;
struct TYPE_12__ {int /*<<< orphan*/  qpn; } ;
struct mlx5_ib_qp_base {TYPE_5__ mqp; } ;
struct TYPE_11__ {scalar_t__ qp_type; scalar_t__ srq; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; scalar_t__ rwq_ind_tbl; } ;
struct TYPE_10__ {struct mlx5_ib_qp_base base; } ;
struct TYPE_8__ {struct mlx5_ib_qp_base base; } ;
struct TYPE_9__ {TYPE_1__ rq; } ;
struct mlx5_ib_qp {scalar_t__ state; scalar_t__ create_type; TYPE_4__ ibqp; int /*<<< orphan*/  cq_recv_list; int /*<<< orphan*/  cq_send_list; int /*<<< orphan*/  qps_list; TYPE_3__ trans_qp; TYPE_2__ raw_packet_qp; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; int /*<<< orphan*/  reset_flow_resource_lock; } ;
struct mlx5_ib_cq {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  ibpd; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RESET ; 
 scalar_t__ IB_QPT_RAW_PACKET ; 
 int /*<<< orphan*/  MLX5_CMD_OP_2RST_QP ; 
 scalar_t__ MLX5_QP_KERNEL ; 
 scalar_t__ MLX5_QP_USER ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mlx5_ib_qp*,struct mlx5_ib_qp_base*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_ib_cq**,struct mlx5_ib_cq**) ; 
 TYPE_7__* FUNC6 (struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_cq*,struct mlx5_ib_cq*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_ib_qp*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_ib_cq*,struct mlx5_ib_cq*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mlx5_ib_dev*,struct mlx5_ib_qp*,struct mlx5_modify_raw_qp_param*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC17 (scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
	struct mlx5_ib_cq *send_cq, *recv_cq;
	struct mlx5_ib_qp_base *base = &qp->trans_qp.base;
	unsigned long flags;
	int err;

	if (qp->ibqp.rwq_ind_tbl) {
		FUNC4(dev, qp);
		return;
	}

	base = qp->ibqp.qp_type == IB_QPT_RAW_PACKET ?
	       &qp->raw_packet_qp.rq.base :
	       &qp->trans_qp.base;

	if (qp->state != IB_QPS_RESET) {
		if (qp->ibqp.qp_type != IB_QPT_RAW_PACKET) {
			FUNC11(qp);
			err = FUNC9(dev->mdev,
						  MLX5_CMD_OP_2RST_QP, 0,
						  NULL, &base->mqp);
		} else {
			struct mlx5_modify_raw_qp_param raw_qp_param = {
				.operation = MLX5_CMD_OP_2RST_QP
			};

			err = FUNC14(dev, qp, &raw_qp_param, 0);
		}
		if (err)
			FUNC13(dev, "mlx5_ib: modify QP 0x%06x to RESET failed\n",
				     base->mqp.qpn);
	}

	FUNC5(qp->ibqp.qp_type, qp->ibqp.send_cq, qp->ibqp.recv_cq,
		&send_cq, &recv_cq);

	FUNC15(&dev->reset_flow_resource_lock, flags);
	FUNC10(send_cq, recv_cq);
	/* del from lists under both locks above to protect reset flow paths */
	FUNC7(&qp->qps_list);
	if (send_cq)
		FUNC7(&qp->cq_send_list);

	if (recv_cq)
		FUNC7(&qp->cq_recv_list);

	if (qp->create_type == MLX5_QP_KERNEL) {
		FUNC0(recv_cq, base->mqp.qpn,
				   qp->ibqp.srq ? FUNC17(qp->ibqp.srq) : NULL);
		if (send_cq != recv_cq)
			FUNC0(send_cq, base->mqp.qpn,
					   NULL);
	}
	FUNC12(send_cq, recv_cq);
	FUNC16(&dev->reset_flow_resource_lock, flags);

	if (qp->ibqp.qp_type == IB_QPT_RAW_PACKET) {
		FUNC3(dev, qp);
	} else {
		err = FUNC8(dev->mdev, &base->mqp);
		if (err)
			FUNC13(dev, "failed to destroy QP 0x%x\n",
				     base->mqp.qpn);
	}

	if (qp->create_type == MLX5_QP_KERNEL)
		FUNC1(dev, qp);
	else if (qp->create_type == MLX5_QP_USER)
		FUNC2(&FUNC6(qp)->ibpd, qp, base);
}
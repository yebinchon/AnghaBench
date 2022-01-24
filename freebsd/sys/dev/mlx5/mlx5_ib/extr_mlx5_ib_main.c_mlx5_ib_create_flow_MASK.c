#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tirn; } ;
struct TYPE_7__ {TYPE_2__ rq; } ;
struct TYPE_5__ {int /*<<< orphan*/  tirn; } ;
struct mlx5_ib_qp {int flags; TYPE_3__ raw_packet_qp; TYPE_1__ rss_qp; } ;
struct ib_flow {int dummy; } ;
struct mlx5_ib_flow_prio {struct ib_flow ibflow; int /*<<< orphan*/  tir_num; int /*<<< orphan*/  type; } ;
struct mlx5_ib_flow_handler {struct ib_flow ibflow; int /*<<< orphan*/  tir_num; int /*<<< orphan*/  type; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct mlx5_ib_dev {TYPE_4__ flow_db; int /*<<< orphan*/  mdev; } ;
struct mlx5_flow_destination {struct ib_flow ibflow; int /*<<< orphan*/  tir_num; int /*<<< orphan*/  type; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct ib_flow_attr {scalar_t__ priority; scalar_t__ port; int flags; scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct ib_flow* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_FLOW_ATTR_ALL_DEFAULT ; 
 int IB_FLOW_ATTR_FLAGS_DONT_TRAP ; 
 scalar_t__ IB_FLOW_ATTR_MC_DEFAULT ; 
 scalar_t__ IB_FLOW_ATTR_NORMAL ; 
 scalar_t__ IB_FLOW_ATTR_SNIFFER ; 
 int IB_FLOW_DOMAIN_USER ; 
 scalar_t__ FUNC1 (struct mlx5_ib_flow_prio*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_DESTINATION_TYPE_TIR ; 
 scalar_t__ MLX5_IB_FLOW_LAST_PRIO ; 
 int /*<<< orphan*/  MLX5_IB_FT_RX ; 
 int /*<<< orphan*/  MLX5_IB_FT_TX ; 
 int MLX5_IB_QP_RSS ; 
 int FUNC3 (struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC4 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr*,struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC5 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr*,struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC6 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr*,struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC7 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct mlx5_ib_flow_prio*,struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC8 (struct mlx5_ib_dev*,struct ib_flow_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_ib_flow_prio*) ; 
 struct mlx5_ib_flow_prio* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_ports ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,int) ; 
 struct mlx5_ib_dev* FUNC14 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_qp* FUNC15 (struct ib_qp*) ; 

__attribute__((used)) static struct ib_flow *FUNC16(struct ib_qp *qp,
					   struct ib_flow_attr *flow_attr,
					   int domain)
{
	struct mlx5_ib_dev *dev = FUNC14(qp->device);
	struct mlx5_ib_qp *mqp = FUNC15(qp);
	struct mlx5_ib_flow_handler *handler = NULL;
	struct mlx5_flow_destination *dst = NULL;
	struct mlx5_ib_flow_prio *ft_prio_tx = NULL;
	struct mlx5_ib_flow_prio *ft_prio;
	int err;

	if (flow_attr->priority > MLX5_IB_FLOW_LAST_PRIO)
		return FUNC0(-ENOSPC);

	if (domain != IB_FLOW_DOMAIN_USER ||
	    flow_attr->port > FUNC2(dev->mdev, num_ports) ||
	    (flow_attr->flags & ~IB_FLOW_ATTR_FLAGS_DONT_TRAP))
		return FUNC0(-EINVAL);

	dst = FUNC10(sizeof(*dst), GFP_KERNEL);
	if (!dst)
		return FUNC0(-ENOMEM);

	FUNC11(&dev->flow_db.lock);

	ft_prio = FUNC8(dev, flow_attr, MLX5_IB_FT_RX);
	if (FUNC1(ft_prio)) {
		err = FUNC3(ft_prio);
		goto unlock;
	}
	if (flow_attr->type == IB_FLOW_ATTR_SNIFFER) {
		ft_prio_tx = FUNC8(dev, flow_attr, MLX5_IB_FT_TX);
		if (FUNC1(ft_prio_tx)) {
			err = FUNC3(ft_prio_tx);
			ft_prio_tx = NULL;
			goto destroy_ft;
		}
	}

	dst->type = MLX5_FLOW_DESTINATION_TYPE_TIR;
	if (mqp->flags & MLX5_IB_QP_RSS)
		dst->tir_num = mqp->rss_qp.tirn;
	else
		dst->tir_num = mqp->raw_packet_qp.rq.tirn;

	if (flow_attr->type == IB_FLOW_ATTR_NORMAL) {
		if (flow_attr->flags & IB_FLOW_ATTR_FLAGS_DONT_TRAP)  {
			handler = FUNC4(dev, ft_prio,
							flow_attr, dst);
		} else {
			handler = FUNC5(dev, ft_prio, flow_attr,
						   dst);
		}
	} else if (flow_attr->type == IB_FLOW_ATTR_ALL_DEFAULT ||
		   flow_attr->type == IB_FLOW_ATTR_MC_DEFAULT) {
		handler = FUNC6(dev, ft_prio, flow_attr,
						dst);
	} else if (flow_attr->type == IB_FLOW_ATTR_SNIFFER) {
		handler = FUNC7(dev, ft_prio, ft_prio_tx, dst);
	} else {
		err = -EINVAL;
		goto destroy_ft;
	}

	if (FUNC1(handler)) {
		err = FUNC3(handler);
		handler = NULL;
		goto destroy_ft;
	}

	FUNC12(&dev->flow_db.lock);
	FUNC9(dst);

	return &handler->ibflow;

destroy_ft:
	FUNC13(dev, ft_prio, false);
	if (ft_prio_tx)
		FUNC13(dev, ft_prio_tx, false);
unlock:
	FUNC12(&dev->flow_db.lock);
	FUNC9(dst);
	FUNC9(handler);
	return FUNC0(err);
}
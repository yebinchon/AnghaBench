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
typedef  scalar_t__ u32 ;
struct mlx5e_priv {int /*<<< orphan*/  cq_uar; struct mlx5_core_dev* mdev; } ;
struct TYPE_5__ {scalar_t__ db_numa_node; scalar_t__ buf_numa_node; } ;
struct mlx5e_cq_param {int /*<<< orphan*/  cqc; TYPE_2__ wq; } ;
struct TYPE_4__ {scalar_t__* db; } ;
struct TYPE_6__ {TYPE_1__ db; } ;
struct mlx5_core_cq {int cqe_sz; int vector; int irqn; int /*<<< orphan*/ * uar; int /*<<< orphan*/  event; int /*<<< orphan*/ * comp; scalar_t__* arm_db; scalar_t__* set_ci_db; } ;
struct mlx5e_cq {struct mlx5e_priv* priv; int /*<<< orphan*/  wq; TYPE_3__ wq_ctrl; struct mlx5_core_cq mcq; } ;
struct mlx5_cqe64 {int op_own; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  mlx5e_cq_comp_t ;

/* Variables and functions */
 int FUNC0 (struct mlx5_core_dev*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx5_cqe64* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (struct mlx5_core_dev*,int,int*,int*) ; 
 int /*<<< orphan*/  mlx5e_cq_error_event ; 

__attribute__((used)) static int
FUNC4(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param,
    struct mlx5e_cq *cq,
    mlx5e_cq_comp_t *comp,
    int eq_ix)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5_core_cq *mcq = &cq->mcq;
	int eqn_not_used;
	int irqn;
	int err;
	u32 i;

	param->wq.buf_numa_node = 0;
	param->wq.db_numa_node = 0;

	err = FUNC3(mdev, eq_ix, &eqn_not_used, &irqn);
	if (err)
		return (err);

	err = FUNC0(mdev, &param->wq, param->cqc, &cq->wq,
	    &cq->wq_ctrl);
	if (err)
		return (err);

	mcq->cqe_sz = 64;
	mcq->set_ci_db = cq->wq_ctrl.db.db;
	mcq->arm_db = cq->wq_ctrl.db.db + 1;
	*mcq->set_ci_db = 0;
	*mcq->arm_db = 0;
	mcq->vector = eq_ix;
	mcq->comp = comp;
	mcq->event = mlx5e_cq_error_event;
	mcq->irqn = irqn;
	mcq->uar = &priv->cq_uar;

	for (i = 0; i < FUNC1(&cq->wq); i++) {
		struct mlx5_cqe64 *cqe = FUNC2(&cq->wq, i);

		cqe->op_own = 0xf1;
	}

	cq->priv = priv;

	return (0);
}
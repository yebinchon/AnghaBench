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
struct mlx5_srq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx5_srq_attr {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  res; } ;
struct mlx5_core_srq {int /*<<< orphan*/  srqn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; TYPE_2__ common; } ;
struct TYPE_3__ {struct mlx5_srq_table srq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ IB_SRQT_XRC ; 
 int /*<<< orphan*/  MLX5_RES_SRQ ; 
 int /*<<< orphan*/  MLX5_RES_XSRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,struct mlx5_core_srq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mlx5_core_srq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq,
			 struct mlx5_srq_attr *in)
{
	int err;
	struct mlx5_srq_table *table = &dev->priv.srq_table;

	if (in->type == IB_SRQT_XRC)
		srq->common.res = MLX5_RES_XSRQ;
	else
		srq->common.res = MLX5_RES_SRQ;

	err = FUNC1(dev, srq, in);
	if (err)
		return err;

	FUNC0(&srq->refcount, 1);
	FUNC3(&srq->free);

	FUNC6(&table->lock);
	err = FUNC5(&table->tree, srq->srqn, srq);
	FUNC7(&table->lock);
	if (err) {
		FUNC4(dev, "err %d, srqn 0x%x\n", err, srq->srqn);
		goto err_destroy_srq_split;
	}

	return 0;

err_destroy_srq_split:
	FUNC2(dev, srq);

	return err;
}
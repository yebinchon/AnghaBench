#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct umr_common {int /*<<< orphan*/  sem; int /*<<< orphan*/  qp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * wr_cqe; } ;
struct mlx5_umr_wr {TYPE_2__ wr; } ;
struct mlx5_ib_umr_context {scalar_t__ status; int /*<<< orphan*/  done; int /*<<< orphan*/  cqe; } ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct mlx5_ib_mr {TYPE_1__ mmkey; } ;
struct mlx5_ib_dev {struct umr_common umrc; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_send_wr {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_umr_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
	struct mlx5_core_dev *mdev = dev->mdev;
	struct umr_common *umrc = &dev->umrc;
	struct mlx5_ib_umr_context umr_context;
	struct mlx5_umr_wr umrwr = {};
	struct ib_send_wr *bad;
	int err;

	if (mdev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR)
		return 0;

	FUNC3(&umr_context);

	umrwr.wr.wr_cqe = &umr_context.cqe;
	FUNC5(dev, &umrwr.wr, mr->mmkey.key);

	FUNC0(&umrc->sem);
	err = FUNC1(umrc->qp, &umrwr.wr, &bad);
	if (err) {
		FUNC6(&umrc->sem);
		FUNC2(dev, "err %d\n", err);
		goto error;
	} else {
		FUNC7(&umr_context.done);
		FUNC6(&umrc->sem);
	}
	if (umr_context.status != IB_WC_SUCCESS) {
		FUNC4(dev, "unreg umr failed\n");
		err = -EFAULT;
		goto error;
	}
	return 0;

error:
	return err;
}
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
struct mlx5_ib_qp {int dummy; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct mlx5_ib_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  mcq; int /*<<< orphan*/  wc_list; TYPE_1__ ibcq; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_cq*,int,struct ib_wc*,int*) ; 
 scalar_t__ FUNC3 (struct mlx5_ib_cq*,struct mlx5_ib_qp**,struct ib_wc*) ; 
 int FUNC4 (struct mlx5_ib_cq*,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx5_ib_cq* FUNC7 (struct ib_cq*) ; 
 struct mlx5_ib_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct mlx5_ib_cq *cq = FUNC7(ibcq);
	struct mlx5_ib_qp *cur_qp = NULL;
	struct mlx5_ib_dev *dev = FUNC8(cq->ibcq.device);
	struct mlx5_core_dev *mdev = dev->mdev;
	unsigned long flags;
	int soft_polled = 0;
	int npolled;

	FUNC5(&cq->lock, flags);
	if (FUNC9(mdev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR)) {
		FUNC2(cq, num_entries, wc, &npolled);
		goto out;
	}

	if (FUNC9(!FUNC0(&cq->wc_list)))
		soft_polled = FUNC4(cq, num_entries, wc);

	for (npolled = 0; npolled < num_entries - soft_polled; npolled++) {
		if (FUNC3(cq, &cur_qp, wc + soft_polled + npolled))
			break;
	}

	if (npolled)
		FUNC1(&cq->mcq);
out:
	FUNC6(&cq->lock, flags);

	return soft_polled + npolled;
}
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
struct mlx4_ib_qp {int dummy; } ;
struct mlx4_ib_dev {TYPE_3__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct mlx4_ib_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  mcq; TYPE_1__ ibcq; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_6__ {TYPE_2__* persist; } ;
struct TYPE_5__ {int state; } ;

/* Variables and functions */
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx4_ib_cq*,struct mlx4_ib_qp**,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_cq*,int,struct ib_wc*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mlx4_ib_cq* FUNC5 (struct ib_cq*) ; 
 struct mlx4_ib_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct mlx4_ib_cq *cq = FUNC5(ibcq);
	struct mlx4_ib_qp *cur_qp = NULL;
	unsigned long flags;
	int npolled;
	struct mlx4_ib_dev *mdev = FUNC6(cq->ibcq.device);

	FUNC3(&cq->lock, flags);
	if (FUNC7(mdev->dev->persist->state &
		     MLX4_DEVICE_STATE_INTERNAL_ERROR)) {
		FUNC2(cq, num_entries, wc, &npolled);
		goto out;
	}

	for (npolled = 0; npolled < num_entries; ++npolled) {
		if (FUNC1(cq, &cur_qp, wc + npolled))
			break;
	}

	FUNC0(&cq->mcq);

out:
	FUNC4(&cq->lock, flags);

	return npolled;
}
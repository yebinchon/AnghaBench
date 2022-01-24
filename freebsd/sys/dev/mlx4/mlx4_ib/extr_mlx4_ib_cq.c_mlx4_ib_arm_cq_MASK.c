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
struct mlx4_ib_dev {int /*<<< orphan*/  uar_lock; int /*<<< orphan*/  uar_map; TYPE_3__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct mlx4_ib_cq {int /*<<< orphan*/  mcq; TYPE_1__ ibcq; } ;
struct ib_cq {int dummy; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_6__ {TYPE_2__* persist; } ;
struct TYPE_5__ {int state; } ;

/* Variables and functions */
 int IB_CQ_SOLICITED ; 
 int IB_CQ_SOLICITED_MASK ; 
 int /*<<< orphan*/  MLX4_CQ_DB_REQ_NOT ; 
 int /*<<< orphan*/  MLX4_CQ_DB_REQ_NOT_SOL ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_ib_cq* FUNC2 (struct ib_cq*) ; 
 struct mlx4_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
	struct mlx4_ib_cq *cq = FUNC2(ibcq);
	struct mlx4_ib_dev *mdev = FUNC3(cq->ibcq.device);

	if (FUNC4(mdev->dev->persist->state &
		     MLX4_DEVICE_STATE_INTERNAL_ERROR))
		return -1;

	FUNC1(&cq->mcq,
		    (flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
		    MLX4_CQ_DB_REQ_NOT_SOL : MLX4_CQ_DB_REQ_NOT,
		    mdev->uar_map,
		    FUNC0(&mdev->uar_lock));

	return 0;
}
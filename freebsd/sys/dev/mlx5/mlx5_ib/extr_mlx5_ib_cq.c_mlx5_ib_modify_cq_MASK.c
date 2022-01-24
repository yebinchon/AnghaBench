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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  cqn; } ;
struct mlx5_ib_cq {TYPE_1__ mcq; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cq_moderation ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_cq* FUNC3 (struct ib_cq*) ; 
 struct mlx5_ib_dev* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
	struct mlx5_ib_dev *dev = FUNC4(cq->device);
	struct mlx5_ib_cq *mcq = FUNC3(cq);
	int err;

	if (!FUNC0(dev->mdev, cq_moderation))
		return -ENOSYS;

	err = FUNC1(dev->mdev, &mcq->mcq,
					     cq_period, cq_count);
	if (err)
		FUNC2(dev, "modify cq 0x%x failed\n", mcq->mcq.cqn);

	return err;
}
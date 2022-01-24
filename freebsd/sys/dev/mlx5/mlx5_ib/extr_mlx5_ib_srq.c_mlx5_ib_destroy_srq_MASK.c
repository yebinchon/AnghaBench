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
struct mlx5_ib_srq {int /*<<< orphan*/  umem; int /*<<< orphan*/  db; int /*<<< orphan*/  msrq; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_srq {TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_srq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_srq* FUNC6 (struct ib_srq*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct ib_srq *srq)
{
	struct mlx5_ib_dev *dev = FUNC5(srq->device);
	struct mlx5_ib_srq *msrq = FUNC6(srq);

	FUNC3(dev->mdev, &msrq->msrq);

	if (srq->uobject) {
		FUNC4(FUNC7(srq->uobject->context), &msrq->db);
		FUNC1(msrq->umem);
	} else {
		FUNC0(dev, msrq);
	}

	FUNC2(srq);
	return 0;
}
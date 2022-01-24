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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_ib_cq {int /*<<< orphan*/  mcq; } ;
struct ib_ucontext {int dummy; } ;
struct ib_cq {TYPE_1__* uobject; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {struct ib_ucontext* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_cq*,struct ib_ucontext*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_cq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_cq* FUNC4 (struct ib_cq*) ; 
 struct mlx5_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ib_cq *cq)
{
	struct mlx5_ib_dev *dev = FUNC5(cq->device);
	struct mlx5_ib_cq *mcq = FUNC4(cq);
	struct ib_ucontext *context = NULL;

	if (cq->uobject)
		context = cq->uobject->context;

	FUNC3(dev->mdev, &mcq->mcq);
	if (context)
		FUNC1(mcq, context);
	else
		FUNC0(dev, mcq);

	FUNC2(mcq);

	return 0;
}
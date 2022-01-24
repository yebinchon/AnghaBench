#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_core_dev {int /*<<< orphan*/  dump_rege; int /*<<< orphan*/  dump_lock; scalar_t__ dump_copyout; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MLX5_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct mlx5_core_dev *mdev)
{

	FUNC3(&mdev->dump_lock);
	while (mdev->dump_copyout)
		FUNC2(&mdev->dump_copyout, &mdev->dump_lock, 0, "mlx5fwc", 0);
	FUNC1(mdev);
	FUNC4(&mdev->dump_lock);
	FUNC0(mdev->dump_rege, M_MLX5_DUMP);
}
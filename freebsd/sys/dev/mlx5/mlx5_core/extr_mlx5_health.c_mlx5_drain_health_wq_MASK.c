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
struct mlx5_core_health {int /*<<< orphan*/  work_watchdog; int /*<<< orphan*/  work; int /*<<< orphan*/  recover_work; int /*<<< orphan*/  wq_lock; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DROP_NEW_HEALTH_WORK ; 
 int /*<<< orphan*/  MLX5_DROP_NEW_RECOVERY_WORK ; 
 int /*<<< orphan*/  MLX5_DROP_NEW_WATCHDOG_WORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_core_health *health = &dev->priv.health;
	unsigned long flags;

	FUNC3(&health->wq_lock, flags);
	FUNC2(MLX5_DROP_NEW_HEALTH_WORK, &health->flags);
	FUNC2(MLX5_DROP_NEW_RECOVERY_WORK, &health->flags);
	FUNC2(MLX5_DROP_NEW_WATCHDOG_WORK, &health->flags);
	FUNC4(&health->wq_lock, flags);
	FUNC0(&health->recover_work);
	FUNC1(&health->work);
	FUNC1(&health->work_watchdog);
}
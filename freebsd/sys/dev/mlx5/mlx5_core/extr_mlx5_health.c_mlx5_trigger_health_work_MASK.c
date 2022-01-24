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
struct mlx5_core_health {int /*<<< orphan*/  wq_lock; int /*<<< orphan*/  work; int /*<<< orphan*/  wq; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DROP_NEW_HEALTH_WORK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_core_dev *dev)
{
	struct mlx5_core_health *health = &dev->priv.health;
	unsigned long flags;

	FUNC2(&health->wq_lock, flags);
	if (!FUNC4(MLX5_DROP_NEW_HEALTH_WORK, &health->flags))
		FUNC1(health->wq, &health->work);
	else
		FUNC0(dev,
			"new health works are not permitted at this stage\n");
	FUNC3(&health->wq_lock, flags);
}
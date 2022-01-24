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
typedef  scalar_t__ u32 ;
struct mlx5_core_health {scalar_t__ prev; scalar_t__ miss_counter; int /*<<< orphan*/  timer; scalar_t__ fatal_error; int /*<<< orphan*/  health_counter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {scalar_t__ state; TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ MAX_MISSES ; 
 scalar_t__ MLX5_DEVICE_STATE_UP ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct mlx5_core_dev *dev = (struct mlx5_core_dev *)data;
	struct mlx5_core_health *health = &dev->priv.health;
	u32 fatal_error;
	u32 count;

	if (dev->state != MLX5_DEVICE_STATE_UP)
		return;

	count = FUNC2(health->health_counter);
	if (count == health->prev)
		++health->miss_counter;
	else
		health->miss_counter = 0;

	health->prev = count;
	if (health->miss_counter == MAX_MISSES) {
		FUNC3(dev, "device's health compromised - reached miss count\n");
		if (FUNC6(dev) == 0)
			FUNC3(dev, "FW is unable to respond to initialization segment reads\n");
	}

	fatal_error = FUNC0(dev);

	if (fatal_error && !health->fatal_error) {
		FUNC3(dev,
		    "Fatal error %u detected\n", fatal_error);
		dev->priv.health.fatal_error = fatal_error;
		FUNC6(dev);
		FUNC4(dev);
	}

	FUNC5(&health->timer, FUNC1());
}
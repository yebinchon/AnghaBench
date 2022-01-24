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
struct mlx4_dev {int dummy; } ;
struct mlx4_config_dev {void* roce_flags; void* update_flags; } ;
typedef  int /*<<< orphan*/  config_dev ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DISABLE_RX_PORT ; 
 int /*<<< orphan*/  MLX4_DISABLE_RX_PORT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_config_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlx4_dev*,struct mlx4_config_dev*) ; 

int FUNC3(struct mlx4_dev *dev, bool dis)
{
	struct mlx4_config_dev config_dev;

	FUNC1(&config_dev, 0, sizeof(config_dev));
	config_dev.update_flags = FUNC0(MLX4_DISABLE_RX_PORT);
	if (dis)
		config_dev.roce_flags =
			FUNC0(CONFIG_DISABLE_RX_PORT);

	return FUNC2(dev, &config_dev);
}
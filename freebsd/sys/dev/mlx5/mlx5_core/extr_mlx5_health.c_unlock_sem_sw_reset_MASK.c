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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_SEMAPHORE_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *dev)
{
	int ret;

	/* Lock GW access */
	ret = -FUNC1(dev);
	if (ret) {
		FUNC0(dev, "Timed out locking gateway %d\n", ret);
		return ret;
	}

	ret = -FUNC3(dev, MLX5_SEMAPHORE_SW_RESET);

	/* Unlock GW access */
	FUNC2(dev);

	return ret;
}
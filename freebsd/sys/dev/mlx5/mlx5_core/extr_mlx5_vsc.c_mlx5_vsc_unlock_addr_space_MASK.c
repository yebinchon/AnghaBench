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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MLX5_VSC_DOMAIN_SEMAPHORES ; 
 int FUNC0 (struct mlx5_core_dev*,scalar_t__,scalar_t__*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*,scalar_t__,scalar_t__*) ; 

int FUNC3(struct mlx5_core_dev *mdev, u32 addr)
{
	u32 data = 0;
	int ret;

	ret = FUNC1(mdev, MLX5_VSC_DOMAIN_SEMAPHORES);
	if (ret)
		return ret;

	/* Try to modify lock */
	ret = FUNC2(mdev, addr, &data);
	if (ret)
		return ret;

	/* Verify */
	ret = FUNC0(mdev, addr, &data);
	if (ret)
		return ret;
	if (data != 0)
		return EBUSY;

	return 0;
}
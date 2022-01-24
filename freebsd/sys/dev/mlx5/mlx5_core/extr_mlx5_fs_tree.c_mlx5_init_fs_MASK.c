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
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*) ; 
 int FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  nic_flow_table ; 

int FUNC8(struct mlx5_core_dev *dev)
{
	int err;

	if (FUNC0(dev, nic_flow_table)) {
		err = FUNC4(dev);
		if (err)
			goto err;
	}

	err = FUNC2(dev);
	if (err)
		goto err;

	err = FUNC1(dev);
	if (err)
		goto err;

	err = FUNC3(dev);
	if (err)
		goto err;

	err = FUNC6(dev);
	if (err)
		goto err;

	err = FUNC5(dev);
	if (err)
		goto err;

	return 0;
err:
	FUNC7(dev);
	return err;
}
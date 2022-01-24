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
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC8(struct mlx5_core_dev *dev)
{
#ifdef RATELIMIT
	mlx5_cleanup_rl_table(dev);
#endif
	FUNC7(dev);
	FUNC3(dev);
	FUNC1(dev);
	FUNC5(dev);
	FUNC2(dev);
	FUNC0(dev);
	FUNC6(dev);
}
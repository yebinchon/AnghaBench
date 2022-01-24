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
struct mlx5_eq_table {int /*<<< orphan*/  cmd_eq; int /*<<< orphan*/  async_eq; int /*<<< orphan*/  pages_eq; } ;
struct TYPE_2__ {struct mlx5_eq_table eq_table; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

int FUNC3(struct mlx5_core_dev *dev)
{
	struct mlx5_eq_table *table = &dev->priv.eq_table;
	int err;

	err = FUNC2(dev, &table->pages_eq);
	if (err)
		return err;

	FUNC2(dev, &table->async_eq);
	FUNC1(dev);

	err = FUNC2(dev, &table->cmd_eq);
	if (err)
		FUNC0(dev);

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  wq_cmd; } ;
struct TYPE_4__ {TYPE_1__ health; } ;
struct mlx5_cmd {int dummy; } ;
struct mlx5_core_dev {TYPE_2__ priv; struct mlx5_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,struct mlx5_cmd*) ; 

void FUNC4(struct mlx5_core_dev *dev)
{
	struct mlx5_cmd *cmd = &dev->cmd;

	FUNC0(dev);
	FUNC2(dev->priv.health.wq_cmd);
	FUNC1(dev);
	FUNC3(dev, cmd);
}
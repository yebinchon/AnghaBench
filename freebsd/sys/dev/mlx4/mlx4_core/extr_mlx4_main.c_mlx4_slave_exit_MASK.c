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
struct TYPE_2__ {int /*<<< orphan*/  slave_cmd_mutex; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_COMM_CMD_NA_OP ; 
 int /*<<< orphan*/  MLX4_COMM_CMD_RESET ; 
 int /*<<< orphan*/  MLX4_COMM_TIME ; 
 scalar_t__ FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);

	FUNC3(&priv->cmd.slave_cmd_mutex);
	if (FUNC0(dev, MLX4_COMM_CMD_RESET, 0, MLX4_COMM_CMD_NA_OP,
			  MLX4_COMM_TIME))
		FUNC2(dev, "Failed to close slave function\n");
	FUNC4(&priv->cmd.slave_cmd_mutex);
}
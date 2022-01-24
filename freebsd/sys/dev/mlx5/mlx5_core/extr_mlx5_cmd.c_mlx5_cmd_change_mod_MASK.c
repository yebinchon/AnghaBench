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
struct mlx5_cmd {int mode; int max_reg_cmds; int /*<<< orphan*/  sem; int /*<<< orphan*/  pages_sem; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mlx5_core_dev *dev, int mode)
{
	struct mlx5_cmd *cmd = &dev->cmd;
	int i;

	if (cmd->mode == mode)
		return;

	for (i = 0; i < cmd->max_reg_cmds; i++)
		FUNC0(&cmd->sem);

	FUNC0(&cmd->pages_sem);
	cmd->mode = mode;

	FUNC1(&cmd->pages_sem);
	for (i = 0; i < cmd->max_reg_cmds; i++)
		FUNC1(&cmd->sem);
}
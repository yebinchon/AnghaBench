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
struct mlx4_config_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_CONFIG_DEV ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_B ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx4_config_dev*,int) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

__attribute__((used)) static int FUNC6(struct mlx4_dev *dev, struct mlx4_config_dev *config_dev)
{
	int err;
	struct mlx4_cmd_mailbox *mailbox;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	FUNC2(mailbox->buf, config_dev, sizeof(*config_dev));

	err = FUNC4(dev, mailbox->dma, 0, 0, MLX4_CMD_CONFIG_DEV,
		       MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);

	FUNC5(dev, mailbox);
	return err;
}
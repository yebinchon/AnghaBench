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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct mlx5_cmd {int log_sz; int log_stride; int checksum_disabled; int max_reg_cmds; int bitmask; int cmdif_rev; int /*<<< orphan*/  mode; scalar_t__ dma; int /*<<< orphan*/  pages_sem; int /*<<< orphan*/  sem; TYPE_2__* stats; int /*<<< orphan*/  token_lock; int /*<<< orphan*/  alloc_lock; } ;
struct mlx5_core_dev {TYPE_1__* iseg; struct mlx5_cmd cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmdq_addr_l_sz; int /*<<< orphan*/  cmdq_addr_h; int /*<<< orphan*/  cmdif_rev_fw_sub; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int CMD_IF_REV ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 int /*<<< orphan*/  MLX5_CMD_MODE_POLLING ; 
 int MLX5_MAX_COMMANDS ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_cmd*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,struct mlx5_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(struct mlx5_core_dev *dev)
{
	struct mlx5_cmd *cmd = &dev->cmd;
	u32 cmd_h, cmd_l;
	u16 cmd_if_rev;
	int err;
	int i;

	FUNC7(cmd, 0, sizeof(*cmd));
	cmd_if_rev = FUNC2(dev);
	if (cmd_if_rev != CMD_IF_REV) {
		FUNC9(dev,
		    "Driver cmdif rev(%d) differs from firmware's(%d)\n",
		    CMD_IF_REV, cmd_if_rev);
		return -EINVAL;
	}

	err = FUNC1(dev, cmd);
	if (err)
		goto err_free_pool;

	cmd_l = FUNC5(&dev->iseg->cmdq_addr_l_sz) & 0xff;
	cmd->log_sz = cmd_l >> 4 & 0xf;
	cmd->log_stride = cmd_l & 0xf;
	if (1 << cmd->log_sz > MLX5_MAX_COMMANDS) {
		FUNC9(dev,
		    "firmware reports too many outstanding commands %d\n",
		    1 << cmd->log_sz);
		err = -EINVAL;
		goto err_free_page;
	}

	if (cmd->log_sz + cmd->log_stride > MLX5_ADAPTER_PAGE_SHIFT) {
		FUNC9(dev,
		    "command queue size overflow\n");
		err = -EINVAL;
		goto err_free_page;
	}

	cmd->checksum_disabled = 1;
	cmd->max_reg_cmds = (1 << cmd->log_sz) - 1;
	cmd->bitmask = (1 << cmd->max_reg_cmds) - 1;

	cmd->cmdif_rev = FUNC5(&dev->iseg->cmdif_rev_fw_sub) >> 16;
	if (cmd->cmdif_rev > CMD_IF_REV) {
		FUNC9(dev,
		    "driver does not support command interface version. driver %d, firmware %d\n",
		    CMD_IF_REV, cmd->cmdif_rev);
		err = -ENOTSUPP;
		goto err_free_page;
	}

	FUNC11(&cmd->alloc_lock);
	FUNC11(&cmd->token_lock);
	for (i = 0; i < FUNC0(cmd->stats); i++)
		FUNC11(&cmd->stats[i].lock);

	FUNC10(&cmd->sem, cmd->max_reg_cmds);
	FUNC10(&cmd->pages_sem, 1);

	cmd_h = (u32)((u64)(cmd->dma) >> 32);
	cmd_l = (u32)(cmd->dma);
	if (cmd_l & 0xfff) {
		FUNC9(dev, "invalid command queue address\n");
		err = -ENOMEM;
		goto err_free_page;
	}

	FUNC6(cmd_h, &dev->iseg->cmdq_addr_h);
	FUNC6(cmd_l, &dev->iseg->cmdq_addr_l_sz);

	/* Make sure firmware sees the complete address before we proceed */
	FUNC12();

	FUNC8(dev, "descriptor at dma 0x%llx\n", (unsigned long long)(cmd->dma));

	cmd->mode = MLX5_CMD_MODE_POLLING;

	err = FUNC3(dev);
	if (err) {
		FUNC9(dev, "failed to create command cache\n");
		goto err_free_page;
	}
	return 0;

err_free_page:
	FUNC4(dev, cmd);

err_free_pool:
	return err;
}
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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;
struct res_fs_rule {int mirr_mbox_size; TYPE_1__ com; int /*<<< orphan*/ * mirr_mbox; scalar_t__ mirr_rule_id; int /*<<< orphan*/  qpn; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  MLX4_QP_FLOW_STEERING_ATTACH ; 
 int /*<<< orphan*/  MLX4_QP_FLOW_STEERING_DETACH ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  RES_FS_RULE ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct res_fs_rule**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct mlx4_cmd_mailbox* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx4_dev*,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mlx4_dev *dev, struct res_fs_rule *fs_rule)
{
	struct mlx4_cmd_mailbox *mailbox;
	int err;
	struct res_fs_rule *mirr_rule;
	u64 reg_id;

	mailbox = FUNC5(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	if (!fs_rule->mirr_mbox) {
		FUNC8(dev, "rule mirroring mailbox is null\n");
		return -EINVAL;
	}
	FUNC4(mailbox->buf, fs_rule->mirr_mbox, fs_rule->mirr_mbox_size);
	err = FUNC7(dev, mailbox->dma, &reg_id, fs_rule->mirr_mbox_size >> 2, 0,
			   MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_NATIVE);
	FUNC9(dev, mailbox);

	if (err)
		goto err;

	err = FUNC2(dev, fs_rule->com.owner, reg_id, 1, RES_FS_RULE, fs_rule->qpn);
	if (err)
		goto err_detach;

	err = FUNC3(dev, fs_rule->com.owner, reg_id, RES_FS_RULE, &mirr_rule);
	if (err)
		goto err_rem;

	fs_rule->mirr_rule_id = reg_id;
	mirr_rule->mirr_rule_id = 0;
	mirr_rule->mirr_mbox_size = 0;
	mirr_rule->mirr_mbox = NULL;
	FUNC10(dev, fs_rule->com.owner, reg_id, RES_FS_RULE);

	return 0;
err_rem:
	FUNC11(dev, fs_rule->com.owner, reg_id, 1, RES_FS_RULE, 0);
err_detach:
	FUNC6(dev, reg_id, 0, 0, MLX4_QP_FLOW_STEERING_DETACH,
		 MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
err:
	return err;
}
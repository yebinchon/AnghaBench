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
typedef  int u8 ;
struct mlx4_vport_qos_param {int bw_share; int max_avg_bw; int enable; } ;
struct mlx4_set_vport_context {TYPE_1__* qos_p_up; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_set_vport_context* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable; int /*<<< orphan*/  max_avg_bw; int /*<<< orphan*/  bw_share; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_SET_VPORT_QOS ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int MLX4_NUM_UP ; 
 int /*<<< orphan*/  MLX4_SET_VPORT_QOS_QUERY ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, u8 port, u8 vport,
			   struct mlx4_vport_qos_param *out_param)
{
	int i;
	int err;
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_set_vport_context *ctx;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	ctx = mailbox->buf;

	err = FUNC4(dev, 0, mailbox->dma, (vport << 8) | port,
			   MLX4_SET_VPORT_QOS_QUERY,
			   MLX4_CMD_SET_VPORT_QOS,
			   MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_NATIVE);
	if (err)
		goto out;

	for (i = 0; i < MLX4_NUM_UP; i++) {
		out_param[i].bw_share = FUNC2(ctx->qos_p_up[i].bw_share);
		out_param[i].max_avg_bw =
			FUNC2(ctx->qos_p_up[i].max_avg_bw);
		out_param[i].enable =
			!!(FUNC2(ctx->qos_p_up[i].enable) & 31);
	}

out:
	FUNC5(dev, mailbox);

	return err;
}
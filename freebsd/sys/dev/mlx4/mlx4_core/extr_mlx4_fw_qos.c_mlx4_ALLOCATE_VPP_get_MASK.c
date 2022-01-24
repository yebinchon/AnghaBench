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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  dma; struct mlx4_alloc_vpp_param* buf; } ;
struct mlx4_alloc_vpp_param {int /*<<< orphan*/ * vpp_p_up; int /*<<< orphan*/  availible_vpp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int /*<<< orphan*/  MLX4_ALLOCATE_VPP_QUERY ; 
 int /*<<< orphan*/  MLX4_CMD_ALLOCATE_VPP ; 
 int /*<<< orphan*/  MLX4_CMD_NATIVE ; 
 int /*<<< orphan*/  MLX4_CMD_TIME_CLASS_A ; 
 int MLX4_NUM_UP ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

int FUNC6(struct mlx4_dev *dev, u8 port,
			  u16 *availible_vpp, u8 *vpp_p_up)
{
	int i;
	int err;
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_alloc_vpp_param *out_param;

	mailbox = FUNC3(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	out_param = mailbox->buf;

	err = FUNC4(dev, 0, mailbox->dma, port,
			   MLX4_ALLOCATE_VPP_QUERY,
			   MLX4_CMD_ALLOCATE_VPP,
			   MLX4_CMD_TIME_CLASS_A,
			   MLX4_CMD_NATIVE);
	if (err)
		goto out;

	/* Total number of supported VPPs */
	*availible_vpp = (u16)FUNC2(out_param->availible_vpp);

	for (i = 0; i < MLX4_NUM_UP; i++)
		vpp_p_up[i] = (u8)FUNC2(out_param->vpp_p_up[i]);

out:
	FUNC5(dev, mailbox);

	return err;
}
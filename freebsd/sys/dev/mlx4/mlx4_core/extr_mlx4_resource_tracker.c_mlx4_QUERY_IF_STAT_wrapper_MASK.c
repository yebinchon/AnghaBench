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
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_COUNTER ; 
 int FUNC0 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx4_dev *dev, int slave,
			       struct mlx4_vhcr *vhcr,
			       struct mlx4_cmd_mailbox *inbox,
			       struct mlx4_cmd_mailbox *outbox,
			       struct mlx4_cmd_info *cmd)
{
	int err;
	int index = vhcr->in_modifier & 0xffff;

	err = FUNC0(dev, slave, index, RES_COUNTER, NULL);
	if (err)
		return err;

	err = FUNC1(dev, slave, vhcr, inbox, outbox, cmd);
	FUNC2(dev, slave, index, RES_COUNTER);
	return err;
}
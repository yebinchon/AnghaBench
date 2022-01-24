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
struct res_mpt {TYPE_1__* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  RES_MPT ; 
 int /*<<< orphan*/  RES_MPT_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct mlx4_dev *dev, int slave,
			   struct mlx4_vhcr *vhcr,
			   struct mlx4_cmd_mailbox *inbox,
			   struct mlx4_cmd_mailbox *outbox,
			   struct mlx4_cmd_info *cmd)
{
	int err;
	int index = vhcr->in_modifier;
	struct res_mpt *mpt;
	int id;

	id = index & FUNC2(dev);
	err = FUNC3(dev, slave, id, RES_MPT_MAPPED, &mpt);
	if (err)
		return err;

	err = FUNC1(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto ex_abort;

	if (mpt->mtt)
		FUNC0(&mpt->mtt->ref_count);

	FUNC5(dev, slave, RES_MPT, id);
	return 0;

ex_abort:
	FUNC4(dev, slave, RES_MPT, id);

	return err;
}
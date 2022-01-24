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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  res_id; } ;
struct res_mtt {TYPE_2__ com; int /*<<< orphan*/  ref_count; } ;
struct res_mpt {struct res_mtt* mtt; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct TYPE_3__ {int mtt_entry_sz; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/  buf; } ;
struct mlx4_cmd_info {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  RES_MPT ; 
 int /*<<< orphan*/  RES_MPT_HW ; 
 int /*<<< orphan*/  RES_MTT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt*) ; 
 int FUNC2 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mtt**) ; 
 int FUNC3 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*,int,int /*<<< orphan*/ ,int) ; 

int FUNC16(struct mlx4_dev *dev, int slave,
			   struct mlx4_vhcr *vhcr,
			   struct mlx4_cmd_mailbox *inbox,
			   struct mlx4_cmd_mailbox *outbox,
			   struct mlx4_cmd_info *cmd)
{
	int err;
	int index = vhcr->in_modifier;
	struct res_mtt *mtt;
	struct res_mpt *mpt;
	int mtt_base = FUNC5(inbox->buf) / dev->caps.mtt_entry_sz;
	int phys;
	int id;
	u32 pd;
	int pd_slave;

	id = index & FUNC4(dev);
	err = FUNC12(dev, slave, id, RES_MPT_HW, &mpt);
	if (err)
		return err;

	/* Disable memory windows for VFs. */
	if (!FUNC10(inbox->buf)) {
		err = -EPERM;
		goto ex_abort;
	}

	/* Make sure that the PD bits related to the slave id are zeros. */
	pd = FUNC7(inbox->buf);
	pd_slave = (pd >> 17) & 0x7f;
	if (pd_slave != 0 && --pd_slave != slave) {
		err = -EPERM;
		goto ex_abort;
	}

	if (FUNC9(inbox->buf)) {
		/* FMR and Bind Enable are forbidden in slave devices. */
		if (FUNC8(inbox->buf)) {
			err = -EPERM;
			goto ex_abort;
		}
		/* FMR and Memory Windows are also forbidden. */
		if (!FUNC10(inbox->buf)) {
			err = -EPERM;
			goto ex_abort;
		}
	}

	phys = FUNC11(inbox->buf);
	if (!phys) {
		err = FUNC2(dev, slave, mtt_base, RES_MTT, &mtt);
		if (err)
			goto ex_abort;

		err = FUNC1(dev, slave, mtt_base,
				      FUNC6(inbox->buf), mtt);
		if (err)
			goto ex_put;

		mpt->mtt = mtt;
	}

	err = FUNC3(dev, slave, vhcr, inbox, outbox, cmd);
	if (err)
		goto ex_put;

	if (!phys) {
		FUNC0(&mtt->ref_count);
		FUNC13(dev, slave, mtt->com.res_id, RES_MTT);
	}

	FUNC15(dev, slave, RES_MPT, id);
	return 0;

ex_put:
	if (!phys)
		FUNC13(dev, slave, mtt->com.res_id, RES_MTT);
ex_abort:
	FUNC14(dev, slave, RES_MPT, id);

	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ from_state; } ;
struct res_mpt {TYPE_2__ com; int /*<<< orphan*/  key; } ;
struct mlx4_vhcr {int in_modifier; } ;
struct mlx4_mpt_entry {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int /*<<< orphan*/ * buf; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmpt_table; } ;
struct TYPE_6__ {TYPE_1__ mr_table; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  RES_MPT ; 
 scalar_t__ RES_MPT_HW ; 
 scalar_t__ RES_MPT_MAPPED ; 
 int FUNC0 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ,struct res_mpt**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mlx4_mpt_entry*,int) ; 
 int FUNC2 (struct mlx4_dev*,int,struct mlx4_vhcr*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_mailbox*,struct mlx4_cmd_info*) ; 
 TYPE_3__* FUNC3 (struct mlx4_dev*) ; 
 struct mlx4_mpt_entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,int,int,int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx4_dev *dev, int slave,
			   struct mlx4_vhcr *vhcr,
			   struct mlx4_cmd_mailbox *inbox,
			   struct mlx4_cmd_mailbox *outbox,
			   struct mlx4_cmd_info *cmd)
{
	int err;
	int index = vhcr->in_modifier;
	struct res_mpt *mpt;
	int id;

	id = index & FUNC5(dev);
	err = FUNC0(dev, slave, id, RES_MPT, &mpt);
	if (err)
		return err;

	if (mpt->com.from_state == RES_MPT_MAPPED) {
		/* In order to allow rereg in SRIOV, we need to alter the MPT entry. To do
		 * that, the VF must read the MPT. But since the MPT entry memory is not
		 * in the VF's virtual memory space, it must use QUERY_MPT to obtain the
		 * entry contents. To guarantee that the MPT cannot be changed, the driver
		 * must perform HW2SW_MPT before this query and return the MPT entry to HW
		 * ownership fofollowing the change. The change here allows the VF to
		 * perform QUERY_MPT also when the entry is in SW ownership.
		 */
		struct mlx4_mpt_entry *mpt_entry = FUNC4(
					&FUNC3(dev)->mr_table.dmpt_table,
					mpt->key, NULL);

		if (NULL == mpt_entry || NULL == outbox->buf) {
			err = -EINVAL;
			goto out;
		}

		FUNC1(outbox->buf, mpt_entry, sizeof(*mpt_entry));

		err = 0;
	} else if (mpt->com.from_state == RES_MPT_HW) {
		err = FUNC2(dev, slave, vhcr, inbox, outbox, cmd);
	} else {
		err = -EBUSY;
		goto out;
	}


out:
	FUNC6(dev, slave, id, RES_MPT);
	return err;
}
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
union ib_gid {int raw; } ;
typedef  int /*<<< orphan*/  u16 ;
struct mthca_mgm {int* qp; int next_gid_index; int /*<<< orphan*/  gid; } ;
struct mthca_mailbox {struct mthca_mgm* buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  alloc; } ;
struct TYPE_3__ {int num_mgms; } ;
struct mthca_dev {TYPE_2__ mcg_table; TYPE_1__ limits; } ;
struct ib_qp {int qp_num; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mthca_mailbox*) ; 
 int MTHCA_QP_PER_MGM ; 
 int FUNC2 (struct mthca_mailbox*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct mthca_dev*,int,struct mthca_mailbox*,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct mthca_dev*,int,struct mthca_mailbox*) ; 
 int FUNC8 (struct mthca_dev*,int,struct mthca_mailbox*) ; 
 struct mthca_mailbox* FUNC9 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct mthca_dev* FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	struct mthca_dev *dev = FUNC15(ibqp->device);
	struct mthca_mailbox *mailbox;
	struct mthca_mgm *mgm;
	u16 hash;
	int prev, index;
	int i, loc;
	int err;

	mailbox = FUNC9(dev, GFP_KERNEL);
	if (FUNC1(mailbox))
		return FUNC2(mailbox);
	mgm = mailbox->buf;

	FUNC13(&dev->mcg_table.mutex);

	err = FUNC5(dev, gid->raw, mailbox, &hash, &prev, &index);
	if (err)
		goto out;

	if (index == -1) {
		FUNC10(dev, "MGID %pI6 not found\n", gid->raw);
		err = -EINVAL;
		goto out;
	}

	for (loc = -1, i = 0; i < MTHCA_QP_PER_MGM; ++i) {
		if (mgm->qp[i] == FUNC4(ibqp->qp_num | (1 << 31)))
			loc = i;
		if (!(mgm->qp[i] & FUNC4(1 << 31)))
			break;
	}

	if (loc == -1) {
		FUNC10(dev, "QP %06x not found in MGM\n", ibqp->qp_num);
		err = -EINVAL;
		goto out;
	}

	mgm->qp[loc]   = mgm->qp[i - 1];
	mgm->qp[i - 1] = 0;

	err = FUNC8(dev, index, mailbox);
	if (err) {
		FUNC10(dev, "WRITE_MGM returned %d\n", err);
		goto out;
	}

	if (i != 1)
		goto out;

	if (prev == -1) {
		/* Remove entry from MGM */
		int amgm_index_to_free = FUNC3(mgm->next_gid_index) >> 6;
		if (amgm_index_to_free) {
			err = FUNC7(dev, amgm_index_to_free,
					     mailbox);
			if (err) {
				FUNC10(dev, "READ_MGM returned %d\n", err);
				goto out;
			}
		} else
			FUNC6(mgm->gid, 0, 16);

		err = FUNC8(dev, index, mailbox);
		if (err) {
			FUNC10(dev, "WRITE_MGM returned %d\n", err);
			goto out;
		}
		if (amgm_index_to_free) {
			FUNC0(amgm_index_to_free < dev->limits.num_mgms);
			FUNC11(&dev->mcg_table.alloc, amgm_index_to_free);
		}
	} else {
		/* Remove entry from AMGM */
		int curr_next_index = FUNC3(mgm->next_gid_index) >> 6;
		err = FUNC7(dev, prev, mailbox);
		if (err) {
			FUNC10(dev, "READ_MGM returned %d\n", err);
			goto out;
		}

		mgm->next_gid_index = FUNC4(curr_next_index << 6);

		err = FUNC8(dev, prev, mailbox);
		if (err) {
			FUNC10(dev, "WRITE_MGM returned %d\n", err);
			goto out;
		}
		FUNC0(index < dev->limits.num_mgms);
		FUNC11(&dev->mcg_table.alloc, index);
	}

 out:
	FUNC14(&dev->mcg_table.mutex);

	FUNC12(dev, mailbox);
	return err;
}
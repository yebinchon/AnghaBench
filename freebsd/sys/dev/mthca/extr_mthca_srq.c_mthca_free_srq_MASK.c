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
struct TYPE_5__ {int /*<<< orphan*/  uobject; } ;
struct mthca_srq {int srqn; int /*<<< orphan*/  db_index; TYPE_2__ ibsrq; int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; } ;
struct mthca_mailbox {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/  table; int /*<<< orphan*/  lock; int /*<<< orphan*/  srq; } ;
struct TYPE_4__ {int num_srqs; } ;
struct mthca_dev {TYPE_3__ srq_table; TYPE_1__ limits; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  MTHCA_DB_TYPE_SRQ ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_dev*,struct mthca_srq*) ; 
 int FUNC2 (struct mthca_dev*,struct mthca_mailbox*,int) ; 
 struct mthca_mailbox* FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*,struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*,struct mthca_srq*) ; 
 scalar_t__ FUNC9 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mthca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

void FUNC15(struct mthca_dev *dev, struct mthca_srq *srq)
{
	struct mthca_mailbox *mailbox;
	int err;

	mailbox = FUNC3(dev, GFP_KERNEL);
	if (FUNC0(mailbox)) {
		FUNC11(dev, "No memory for mailbox to free SRQ.\n");
		return;
	}

	err = FUNC2(dev, mailbox, srq->srqn);
	if (err)
		FUNC11(dev, "HW2SW_SRQ failed (%d)\n", err);

	FUNC12(&dev->srq_table.lock);
	FUNC4(&dev->srq_table.srq,
			  srq->srqn & (dev->limits.num_srqs - 1));
	--srq->refcount;
	FUNC13(&dev->srq_table.lock);

	FUNC14(srq->wait, !FUNC1(dev, srq));

	if (!srq->ibsrq.uobject) {
		FUNC8(dev, srq);
		if (FUNC9(dev))
			FUNC6(dev, MTHCA_DB_TYPE_SRQ, srq->db_index);
	}

	FUNC10(dev, dev->srq_table.table, srq->srqn);
	FUNC5(&dev->srq_table.alloc, srq->srqn);
	FUNC7(dev, mailbox);
}
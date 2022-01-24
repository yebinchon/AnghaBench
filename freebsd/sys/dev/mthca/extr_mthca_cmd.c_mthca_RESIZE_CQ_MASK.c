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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mthca_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;
struct mthca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESIZE_CQ ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  RESIZE_CQ_IN_SIZE ; 
 int /*<<< orphan*/  RESIZE_CQ_LKEY_OFFSET ; 
 int /*<<< orphan*/  RESIZE_CQ_LOG_SIZE_OFFSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mthca_dev*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 

int FUNC7(struct mthca_dev *dev, int cq_num, u32 lkey, u8 log_size)
{
	struct mthca_mailbox *mailbox;
	__be32 *inbox;
	int err;

#define RESIZE_CQ_IN_SIZE		0x40
#define RESIZE_CQ_LOG_SIZE_OFFSET	0x0c
#define RESIZE_CQ_LKEY_OFFSET		0x1c

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	inbox = mailbox->buf;

	FUNC3(inbox, 0, RESIZE_CQ_IN_SIZE);
	/*
	 * Leave start address fields zeroed out -- mthca assumes that
	 * MRs for CQs always start at virtual address 0.
	 */
	FUNC1(inbox, log_size, RESIZE_CQ_LOG_SIZE_OFFSET);
	FUNC1(inbox, lkey,     RESIZE_CQ_LKEY_OFFSET);

	err = FUNC5(dev, mailbox->dma, cq_num, 1, CMD_RESIZE_CQ,
			CMD_TIME_CLASS_B);

	FUNC6(dev, mailbox);
	return err;
}
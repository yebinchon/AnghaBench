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
typedef  scalar_t__ u64 ;
struct mthca_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/ * buf; } ;
struct mthca_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MAP_ICM ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_B ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int FUNC1 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct mthca_mailbox* FUNC3 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 

int FUNC7(struct mthca_dev *dev, u64 dma_addr, u64 virt)
{
	struct mthca_mailbox *mailbox;
	__be64 *inbox;
	int err;

	mailbox = FUNC3(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);
	inbox = mailbox->buf;

	inbox[0] = FUNC2(virt);
	inbox[1] = FUNC2(dma_addr);

	err = FUNC4(dev, mailbox->dma, 1, 0, CMD_MAP_ICM,
			CMD_TIME_CLASS_B);

	FUNC6(dev, mailbox);

	if (!err)
		FUNC5(dev, "Mapped page at %llx to %llx for ICM.\n",
			  (unsigned long long) dma_addr, (unsigned long long) virt);

	return err;
}
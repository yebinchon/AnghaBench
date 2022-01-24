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
struct mthca_mailbox {int /*<<< orphan*/  dma; int /*<<< orphan*/  buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;
struct mthca_dev {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mthca_dev *dev, struct mthca_mailbox *mailbox)
{
	if (!mailbox)
		return;

	FUNC1(dev->cmd.pool, mailbox->buf, mailbox->dma);
	FUNC0(mailbox);
}
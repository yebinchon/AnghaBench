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
typedef  int u64 ;
struct mlx4_mtt {scalar_t__ page_shift; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cq_context {int mtt_base_addr_h; void* mtt_base_addr_l; scalar_t__ log_page_size; void* logsize_usrpage; } ;
struct mlx4_cq {int /*<<< orphan*/  cqn; } ;
struct mlx4_cmd_mailbox {struct mlx4_cq_context* buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int FUNC1 (struct mlx4_cmd_mailbox*) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (struct mlx4_dev*,struct mlx4_cmd_mailbox*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_cmd_mailbox* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 
 int FUNC7 (struct mlx4_dev*,struct mlx4_mtt*) ; 

int FUNC8(struct mlx4_dev *dev, struct mlx4_cq *cq,
		   int entries, struct mlx4_mtt *mtt)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_cq_context *cq_context;
	u64 mtt_addr;
	int err;

	mailbox = FUNC5(dev);
	if (FUNC0(mailbox))
		return FUNC1(mailbox);

	cq_context = mailbox->buf;
	cq_context->logsize_usrpage = FUNC2(FUNC3(entries) << 24);
	cq_context->log_page_size   = mtt->page_shift - 12;
	mtt_addr = FUNC7(dev, mtt);
	cq_context->mtt_base_addr_h = mtt_addr >> 32;
	cq_context->mtt_base_addr_l = FUNC2(mtt_addr & 0xffffffff);

	err = FUNC4(dev, mailbox, cq->cqn, 0);

	FUNC6(dev, mailbox);
	return err;
}
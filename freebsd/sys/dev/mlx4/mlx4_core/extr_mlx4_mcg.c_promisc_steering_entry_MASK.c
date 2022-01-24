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
typedef  int u8 ;
typedef  int u32 ;
struct mlx4_mgm {int /*<<< orphan*/ * qp; int /*<<< orphan*/  members_count; } ;
struct TYPE_2__ {int num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {struct mlx4_mgm* buf; } ;
typedef  enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx4_cmd_mailbox*) ; 
 int MGM_QPN_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int,int,int) ; 
 scalar_t__ FUNC3 (struct mlx4_dev*,unsigned int,struct mlx4_cmd_mailbox*) ; 
 struct mlx4_cmd_mailbox* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ; 

__attribute__((used)) static bool FUNC6(struct mlx4_dev *dev, u8 port,
				   enum mlx4_steer_type steer,
				   unsigned int index, u32 tqpn,
				   u32 *members_count)
{
	struct mlx4_cmd_mailbox *mailbox;
	struct mlx4_mgm *mgm;
	u32 m_count;
	bool ret = false;
	int i;

	if (port < 1 || port > dev->caps.num_ports)
		return false;

	mailbox = FUNC4(dev);
	if (FUNC0(mailbox))
		return false;
	mgm = mailbox->buf;

	if (FUNC3(dev, index, mailbox))
		goto out;
	m_count = FUNC1(mgm->members_count) & 0xffffff;
	if (members_count)
		*members_count = m_count;

	for (i = 0;  i < m_count; i++) {
		u32 qpn = FUNC1(mgm->qp[i]) & MGM_QPN_MASK;
		if (!FUNC2(dev, port, steer, qpn) && qpn != tqpn) {
			/* the qp is not promisc, the entry can't be removed */
			goto out;
		}
	}
	ret = true;
out:
	FUNC5(dev, mailbox);
	return ret;
}
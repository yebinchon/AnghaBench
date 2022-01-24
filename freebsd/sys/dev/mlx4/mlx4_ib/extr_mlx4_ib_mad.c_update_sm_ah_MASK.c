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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_ib_dev {int /*<<< orphan*/  sm_lock; struct ib_ah** sm_ah; TYPE_2__*** send_agent; } ;
struct ib_ah_attr {int sl; int port_num; int /*<<< orphan*/  dlid; } ;
struct ib_ah {int dummy; } ;
struct TYPE_4__ {TYPE_1__* qp; } ;
struct TYPE_3__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_ah*) ; 
 struct ib_ah* FUNC1 (int /*<<< orphan*/ ,struct ib_ah_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mlx4_ib_dev *dev, u8 port_num, u16 lid, u8 sl)
{
	struct ib_ah *new_ah;
	struct ib_ah_attr ah_attr;
	unsigned long flags;

	if (!dev->send_agent[port_num - 1][0])
		return;

	FUNC3(&ah_attr, 0, sizeof ah_attr);
	ah_attr.dlid     = lid;
	ah_attr.sl       = sl;
	ah_attr.port_num = port_num;

	new_ah = FUNC1(dev->send_agent[port_num - 1][0]->qp->pd,
			      &ah_attr);
	if (FUNC0(new_ah))
		return;

	FUNC4(&dev->sm_lock, flags);
	if (dev->sm_ah[port_num - 1])
		FUNC2(dev->sm_ah[port_num - 1]);
	dev->sm_ah[port_num - 1] = new_ah;
	FUNC5(&dev->sm_lock, flags);
}
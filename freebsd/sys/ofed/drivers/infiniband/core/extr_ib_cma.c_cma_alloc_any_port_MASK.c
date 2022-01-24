#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vnet {int dummy; } ;
struct TYPE_7__ {struct vnet* net; } ;
struct TYPE_8__ {TYPE_3__ dev_addr; } ;
struct TYPE_5__ {TYPE_4__ addr; } ;
struct TYPE_6__ {TYPE_1__ route; } ;
struct rdma_id_private {TYPE_2__ id; } ;
typedef  int /*<<< orphan*/  rand ;
typedef  enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int FUNC0 (int,struct rdma_id_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct vnet*,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vnet*,int*,int*) ; 

__attribute__((used)) static int FUNC4(enum rdma_port_space ps,
			      struct rdma_id_private *id_priv)
{
	static unsigned int last_used_port;
	int low, high, remaining;
	unsigned int rover;
	struct vnet *net = id_priv->id.route.addr.dev_addr.net;
	u32 rand;

	FUNC3(net, &low, &high);
	remaining = (high - low) + 1;
	FUNC2(&rand, sizeof(rand));
	rover = rand % remaining + low;
retry:
	if (last_used_port != rover &&
	    !FUNC1(net, ps, (unsigned short)rover)) {
		int ret = FUNC0(ps, id_priv, rover);
		/*
		 * Remember previously used port number in order to avoid
		 * re-using same port immediately after it is closed.
		 */
		if (!ret)
			last_used_port = rover;
		if (ret != -EADDRNOTAVAIL)
			return ret;
	}
	if (--remaining) {
		rover++;
		if ((rover < low) || (rover > high))
			rover = low;
		goto retry;
	}
	return -EADDRNOTAVAIL;
}
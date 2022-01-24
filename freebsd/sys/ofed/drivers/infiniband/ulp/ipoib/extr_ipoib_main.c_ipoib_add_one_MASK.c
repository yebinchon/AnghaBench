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
struct list_head {int dummy; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  list; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;
struct ib_device {scalar_t__ node_type; int phys_port_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 scalar_t__ RDMA_NODE_IB_SWITCH ; 
 scalar_t__ RDMA_TRANSPORT_IB ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ *,struct list_head*) ; 
 struct ifnet* FUNC3 (char*,struct ib_device*,int) ; 
 int /*<<< orphan*/  ipoib_client ; 
 struct list_head* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct ib_device*,int) ; 

__attribute__((used)) static void
FUNC8(struct ib_device *device)
{
	struct list_head *dev_list;
	struct ifnet *dev;
	struct ipoib_dev_priv *priv;
	int s, e, p;

	if (FUNC6(device->node_type) != RDMA_TRANSPORT_IB)
		return;

	dev_list = FUNC4(sizeof *dev_list, GFP_KERNEL);
	if (!dev_list)
		return;

	FUNC0(dev_list);

	if (device->node_type == RDMA_NODE_IB_SWITCH) {
		s = 0;
		e = 0;
	} else {
		s = 1;
		e = device->phys_port_cnt;
	}

	for (p = s; p <= e; ++p) {
		if (FUNC7(device, p) != IB_LINK_LAYER_INFINIBAND)
			continue;
		dev = FUNC3("ib", device, p);
		if (!FUNC1(dev)) {
			priv = dev->if_softc;
			FUNC5(&priv->list, dev_list);
		}
	}

	FUNC2(device, &ipoib_client, dev_list);
}
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
struct roce_netdev_event_work {int /*<<< orphan*/  work; struct net_device* ndev; } ;
struct net_device {int if_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  IFT_ETHER 129 
#define  IFT_L2VLAN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct roce_netdev_event_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  roce_gid_mgmt_wq ; 
 int /*<<< orphan*/  roce_gid_queue_scan_event_handler ; 

__attribute__((used)) static void
FUNC6(struct net_device *ndev)
{
	struct roce_netdev_event_work *work;

retry:
	switch (ndev->if_type) {
	case IFT_ETHER:
		break;
	case IFT_L2VLAN:
		ndev = FUNC5(ndev);
		if (ndev != NULL)
			goto retry;
		/* FALLTHROUGH */
	default:
		return;
	}

	work = FUNC2(sizeof(*work), GFP_ATOMIC);
	if (!work) {
		FUNC3("roce_gid_mgmt: Couldn't allocate work for addr_event\n");
		return;
	}

	FUNC0(&work->work, roce_gid_queue_scan_event_handler);
	FUNC1(ndev);

	work->ndev = ndev;

	FUNC4(roce_gid_mgmt_wq, &work->work);
}
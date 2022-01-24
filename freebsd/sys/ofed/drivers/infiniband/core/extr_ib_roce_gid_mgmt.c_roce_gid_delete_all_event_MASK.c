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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct roce_netdev_event_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  roce_gid_delete_all_event_handler ; 
 int /*<<< orphan*/  roce_gid_mgmt_wq ; 

__attribute__((used)) static void
FUNC6(struct net_device *ndev)
{
	struct roce_netdev_event_work *work;

	work = FUNC3(sizeof(*work), GFP_ATOMIC);
	if (!work) {
		FUNC4("roce_gid_mgmt: Couldn't allocate work for addr_event\n");
		return;
	}

	FUNC0(&work->work, roce_gid_delete_all_event_handler);
	FUNC1(ndev);
	work->ndev = ndev;
	FUNC5(roce_gid_mgmt_wq, &work->work);

	/* make sure job is complete before returning */
	FUNC2(roce_gid_mgmt_wq);
}
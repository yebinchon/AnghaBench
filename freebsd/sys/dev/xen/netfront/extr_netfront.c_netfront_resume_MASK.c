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
typedef  size_t u_int ;
struct netfront_info {size_t num_queues; int /*<<< orphan*/ * txq; int /*<<< orphan*/ * rxq; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct netfront_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct netfront_info*) ; 
 scalar_t__ xen_suspend_cancelled ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct netfront_info *info = FUNC4(dev);
	u_int i;

	if (xen_suspend_cancelled) {
		for (i = 0; i < info->num_queues; i++) {
			FUNC0(&info->rxq[i]);
			FUNC2(&info->txq[i]);
		}
		FUNC5(info);
		for (i = 0; i < info->num_queues; i++) {
			FUNC1(&info->rxq[i]);
			FUNC3(&info->txq[i]);
		}
		return (0);
	}

	FUNC6(info);
	return (0);
}
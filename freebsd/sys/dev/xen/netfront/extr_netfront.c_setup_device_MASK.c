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
struct netfront_info {unsigned long num_queues; TYPE_1__* txq; TYPE_2__* rxq; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  xen_intr_handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  xen_intr_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netfront_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct netfront_info*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct netfront_info*,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct netfront_info*,unsigned long) ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct netfront_info *info,
    unsigned long num_queues)
{
	int error;
	int q;

	if (info->txq)
		FUNC2(info);

	if (info->rxq)
		FUNC1(info);

	info->num_queues = 0;

	error = FUNC3(dev, info, num_queues);
	if (error != 0)
		goto out;
	error = FUNC4(dev, info, num_queues);
	if (error != 0)
		goto out;

	info->num_queues = num_queues;

	/* No split event channel at the moment. */
	for (q = 0; q < num_queues; q++)
		info->rxq[q].xen_intr_handle = info->txq[q].xen_intr_handle;

	return (0);

out:
	FUNC0(error != 0, ("Error path taken without providing an error code"));
	return (error);
}
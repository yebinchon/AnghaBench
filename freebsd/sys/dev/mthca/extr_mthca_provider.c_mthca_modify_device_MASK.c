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
struct ib_device_modify {int /*<<< orphan*/  node_desc; } ;
struct ib_device {int /*<<< orphan*/  node_desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  cap_mask_mutex; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ERESTARTSYS ; 
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int /*<<< orphan*/  IB_DEVICE_NODE_DESC_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct ib_device*) ; 

__attribute__((used)) static int FUNC4(struct ib_device *ibdev,
			       int mask,
			       struct ib_device_modify *props)
{
	if (mask & ~IB_DEVICE_MODIFY_NODE_DESC)
		return -EOPNOTSUPP;

	if (mask & IB_DEVICE_MODIFY_NODE_DESC) {
		if (FUNC1(&FUNC3(ibdev)->cap_mask_mutex))
			return -ERESTARTSYS;
		FUNC0(ibdev->node_desc, props->node_desc,
		       IB_DEVICE_NODE_DESC_MAX);
		FUNC2(&FUNC3(ibdev)->cap_mask_mutex);
	}

	return 0;
}
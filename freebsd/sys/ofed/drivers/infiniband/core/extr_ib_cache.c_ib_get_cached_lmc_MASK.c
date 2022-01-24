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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__* lmc_cache; int /*<<< orphan*/  lock; } ;
struct ib_device {TYPE_1__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ib_device*) ; 
 scalar_t__ FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ib_device *device,
		      u8                port_num,
		      u8                *lmc)
{
	unsigned long flags;
	int ret = 0;

	if (port_num < FUNC1(device) || port_num > FUNC0(device))
		return -EINVAL;

	FUNC2(&device->cache.lock, flags);
	*lmc = device->cache.lmc_cache[port_num - FUNC1(device)];
	FUNC3(&device->cache.lock, flags);

	return ret;
}
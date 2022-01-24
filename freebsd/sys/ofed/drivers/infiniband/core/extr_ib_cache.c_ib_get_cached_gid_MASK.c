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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  size_t u8 ;
struct ib_gid_table {int /*<<< orphan*/  rwlock; } ;
struct ib_gid_attr {int dummy; } ;
struct TYPE_2__ {struct ib_gid_table** gid_cache; } ;
struct ib_device {TYPE_1__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ib_device*,size_t,int,union ib_gid*,struct ib_gid_attr*) ; 
 size_t FUNC1 (struct ib_device*) ; 
 size_t FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ib_device *device,
		      u8                port_num,
		      int               index,
		      union ib_gid     *gid,
		      struct ib_gid_attr *gid_attr)
{
	int res;
	unsigned long flags;
	struct ib_gid_table **ports_table = device->cache.gid_cache;
	struct ib_gid_table *table = ports_table[port_num - FUNC2(device)];

	if (port_num < FUNC2(device) || port_num > FUNC1(device))
		return -EINVAL;

	FUNC3(&table->rwlock, flags);
	res = FUNC0(device, port_num, index, gid, gid_attr);
	FUNC4(&table->rwlock, flags);

	return res;
}
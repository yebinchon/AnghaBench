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
typedef  size_t u8 ;
struct ib_gid_table {int dummy; } ;
struct TYPE_2__ {struct ib_gid_table** gid_cache; } ;
struct ib_device {size_t phys_port_cnt; TYPE_1__ cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*,scalar_t__,struct ib_gid_table*) ; 
 scalar_t__ FUNC1 (struct ib_device*) ; 

__attribute__((used)) static void FUNC2(struct ib_device *ib_dev)
{
	struct ib_gid_table **table = ib_dev->cache.gid_cache;
	u8 port;

	if (!table)
		return;

	for (port = 0; port < ib_dev->phys_port_cnt; port++)
		FUNC0(ib_dev, port + FUNC1(ib_dev),
				       table[port]);
}
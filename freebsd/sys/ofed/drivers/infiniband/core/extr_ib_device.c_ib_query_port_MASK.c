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
struct TYPE_2__ {int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  scalar_t__ u8 ;
struct ib_port_attr {scalar_t__ subnet_prefix; } ;
struct ib_device {int (* query_port ) (struct ib_device*,scalar_t__,struct ib_port_attr*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_LINK_LAYER_INFINIBAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,scalar_t__,int /*<<< orphan*/ ,union ib_gid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_port_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ib_device*) ; 
 scalar_t__ FUNC4 (struct ib_device*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct ib_device*) ; 
 int FUNC6 (struct ib_device*,scalar_t__,struct ib_port_attr*) ; 

int FUNC7(struct ib_device *device,
		  u8 port_num,
		  struct ib_port_attr *port_attr)
{
	union ib_gid gid;
	int err;

	if (port_num < FUNC5(device) || port_num > FUNC3(device))
		return -EINVAL;

	FUNC2(port_attr, 0, sizeof(*port_attr));
	err = device->query_port(device, port_num, port_attr);
	if (err || port_attr->subnet_prefix)
		return err;

	if (FUNC4(device, port_num) != IB_LINK_LAYER_INFINIBAND)
		return 0;

	err = FUNC1(device, port_num, 0, &gid, NULL);
	if (err)
		return err;

	port_attr->subnet_prefix = FUNC0(gid.global.subnet_prefix);
	return 0;
}
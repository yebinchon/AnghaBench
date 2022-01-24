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
typedef  int /*<<< orphan*/  u8 ;
struct ib_port_attr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 130 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 129 
#define  MLX5_VPORT_ACCESS_METHOD_NIC 128 
 int FUNC0 (struct ib_device*) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC3 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 

int FUNC4(struct ib_device *ibdev, u8 port,
		       struct ib_port_attr *props)
{
	switch (FUNC0(ibdev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		return FUNC2(ibdev, port, props);

	case MLX5_VPORT_ACCESS_METHOD_HCA:
		return FUNC1(ibdev, port, props);

	case MLX5_VPORT_ACCESS_METHOD_NIC:
		return FUNC3(ibdev, port, props);

	default:
		return -EINVAL;
	}
}
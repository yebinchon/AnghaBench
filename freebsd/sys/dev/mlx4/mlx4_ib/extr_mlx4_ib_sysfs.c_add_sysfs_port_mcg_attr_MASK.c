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
struct mlx4_ib_iov_port {int /*<<< orphan*/  mcgs_parent; } ;
struct mlx4_ib_dev {struct mlx4_ib_iov_port* iov_ports; } ;
struct attribute {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct attribute*) ; 

int FUNC2(struct mlx4_ib_dev *device, int port_num,
		struct attribute *attr)
{
	struct mlx4_ib_iov_port *port = &device->iov_ports[port_num - 1];
	int ret;

	ret = FUNC1(port->mcgs_parent, attr);
	if (ret)
		FUNC0("failed to create %s\n", attr->name);

	return ret;
}
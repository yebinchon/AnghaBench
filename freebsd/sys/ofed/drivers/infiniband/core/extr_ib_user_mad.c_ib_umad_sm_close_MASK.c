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
struct inode {int dummy; } ;
struct ib_umad_port {TYPE_1__* umad_dev; int /*<<< orphan*/  sm_sem; int /*<<< orphan*/  file_mutex; int /*<<< orphan*/  port_num; scalar_t__ ib_dev; } ;
struct ib_port_modify {int /*<<< orphan*/  clr_port_cap_mask; } ;
struct file {struct ib_umad_port* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_SM ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_port_modify*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct ib_umad_port *port = filp->private_data;
	struct ib_port_modify props = {
		.clr_port_cap_mask = IB_PORT_SM
	};
	int ret = 0;

	FUNC2(&port->file_mutex);
	if (port->ib_dev)
		ret = FUNC0(port->ib_dev, port->port_num, 0, &props);
	FUNC3(&port->file_mutex);

	FUNC4(&port->sm_sem);

	FUNC1(&port->umad_dev->kobj);

	return ret;
}
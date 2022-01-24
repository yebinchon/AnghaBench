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
struct mlx4_slaves_pport {int /*<<< orphan*/  slaves; } ;
struct TYPE_3__ {scalar_t__ num_ports; } ;
struct mlx4_dev {TYPE_2__* persist; TYPE_1__ caps; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;
struct TYPE_4__ {scalar_t__ num_vfs; } ;

/* Variables and functions */
 int MLX4_ROCE_MAX_GIDS ; 
 int MLX4_ROCE_PF_GIDS ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlx4_active_ports FUNC3 (struct mlx4_dev*,int) ; 
 struct mlx4_slaves_pport FUNC4 (struct mlx4_dev*,int) ; 
 struct mlx4_slaves_pport FUNC5 (struct mlx4_dev*,struct mlx4_active_ports*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC7(struct mlx4_dev *dev, int slave, int port)
{
	int vfs;
	int slave_gid = slave;
	unsigned i;
	struct mlx4_slaves_pport slaves_pport;
	struct mlx4_active_ports actv_ports;
	unsigned max_port_p_one;

	if (slave == 0)
		return MLX4_ROCE_PF_GIDS;

	/* Slave is a VF */
	slaves_pport = FUNC4(dev, port);
	actv_ports = FUNC3(dev, slave);
	max_port_p_one = FUNC2(actv_ports.ports, dev->caps.num_ports) +
		FUNC0(actv_ports.ports, dev->caps.num_ports) + 1;

	for (i = 1; i < max_port_p_one; i++) {
		struct mlx4_active_ports exclusive_ports;
		struct mlx4_slaves_pport slaves_pport_actv;
		FUNC1(exclusive_ports.ports, dev->caps.num_ports);
		FUNC6(i - 1, exclusive_ports.ports);
		if (i == port)
			continue;
		slaves_pport_actv = FUNC5(
				    dev, &exclusive_ports);
		slave_gid -= FUNC0(slaves_pport_actv.slaves,
					   dev->persist->num_vfs + 1);
	}
	vfs = FUNC0(slaves_pport.slaves, dev->persist->num_vfs + 1) - 1;
	if (slave_gid <= ((MLX4_ROCE_MAX_GIDS - MLX4_ROCE_PF_GIDS) % vfs))
		return ((MLX4_ROCE_MAX_GIDS - MLX4_ROCE_PF_GIDS) / vfs) + 1;
	return (MLX4_ROCE_MAX_GIDS - MLX4_ROCE_PF_GIDS) / vfs;
}
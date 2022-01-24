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
struct TYPE_4__ {int /*<<< orphan*/  num_ports; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__* dev_vfs; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;
struct TYPE_3__ {scalar_t__ n_ports; scalar_t__ min_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (struct mlx4_dev*,int) ; 

struct mlx4_active_ports FUNC5(struct mlx4_dev *dev, int slave)
{
	struct mlx4_active_ports actv_ports;
	int vf;

	FUNC2(actv_ports.ports, MLX4_MAX_PORTS);

	if (slave == 0) {
		FUNC0(actv_ports.ports, dev->caps.num_ports);
		return actv_ports;
	}

	vf = FUNC4(dev, slave);
	if (vf < 0)
		return actv_ports;

	FUNC1(actv_ports.ports, dev->dev_vfs[vf].min_port - 1,
		   FUNC3((int)dev->dev_vfs[FUNC4(dev, slave)].n_ports,
		   dev->caps.num_ports));

	return actv_ports;
}
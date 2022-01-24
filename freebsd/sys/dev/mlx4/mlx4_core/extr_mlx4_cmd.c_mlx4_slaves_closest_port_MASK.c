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
struct TYPE_2__ {int /*<<< orphan*/  num_ports; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_active_ports {int /*<<< orphan*/  ports; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx4_active_ports FUNC2 (struct mlx4_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev, int slave, int port)
{
	struct mlx4_active_ports actv_ports = FUNC2(dev, slave);
	int min_port = FUNC1(actv_ports.ports, dev->caps.num_ports)
			+ 1;
	int max_port = min_port +
		FUNC0(actv_ports.ports, dev->caps.num_ports);

	if (port < min_port)
		port = min_port;
	else if (port >= max_port)
		port = max_port - 1;

	return port;
}
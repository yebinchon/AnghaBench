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
struct TYPE_2__ {int flags; int num_ports; int* supported_type; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef  enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_DEV_CAP_FLAG_DPDP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,...) ; 

int FUNC1(struct mlx4_dev *dev,
			   enum mlx4_port_type *port_type)
{
	int i;

	if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_DPDP)) {
		for (i = 0; i < dev->caps.num_ports - 1; i++) {
			if (port_type[i] != port_type[i + 1]) {
				FUNC0(dev, "Only same port types supported on this HCA, aborting\n");
				return -EINVAL;
			}
		}
	}

	for (i = 0; i < dev->caps.num_ports; i++) {
		if (!(port_type[i] & dev->caps.supported_type[i+1])) {
			FUNC0(dev, "Requested port type for port %d is not supported on this HCA\n",
				 i + 1);
			return -EINVAL;
		}
	}
	return 0;
}
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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
#define  MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET 129 
#define  MLX5_CMD_HCA_CAP_PORT_TYPE_IB 128 
 int FUNC1 (struct mlx5_core_dev*,int*) ; 
 int FUNC2 (struct mlx5_core_dev*,int*) ; 
 int /*<<< orphan*/  port_type ; 

int FUNC3(struct mlx5_core_dev *dev, int *min_header)
{
	switch (FUNC0(dev, port_type)) {
	case MLX5_CMD_HCA_CAP_PORT_TYPE_IB:
		return FUNC1(dev, min_header);

	case MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET:
		return FUNC2(dev, min_header);

	default:
		return -EINVAL;
	}
}
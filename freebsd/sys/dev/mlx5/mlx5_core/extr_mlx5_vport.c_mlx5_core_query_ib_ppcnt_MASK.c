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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MLX5_INFINIBAND_PORT_COUNTERS_GROUP ; 
 int /*<<< orphan*/  MLX5_REG_PPCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  grp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_port ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,size_t,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  ppcnt_reg ; 

int FUNC4(struct mlx5_core_dev *dev,
			     u8 port_num, void *out, size_t sz)
{
	u32 *in;
	int err;

	in  = FUNC3(sz);
	if (!in) {
		err = -ENOMEM;
		return err;
	}

	FUNC0(ppcnt_reg, in, local_port, port_num);

	FUNC0(ppcnt_reg, in, grp, MLX5_INFINIBAND_PORT_COUNTERS_GROUP);
	err = FUNC2(dev, in, sz, out,
				   sz, MLX5_REG_PPCNT, 0, 0);

	FUNC1(in);
	return err;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_PTYS_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eth_proto_admin ; 
 int /*<<< orphan*/  ib_proto_admin ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  ptys_reg ; 

int FUNC3(struct mlx5_core_dev *dev,
				u32 *proto_admin, int proto_mask)
{
	u32 out[FUNC1(ptys_reg)];
	int err;

	err = FUNC2(dev, out, sizeof(out), proto_mask, 1);
	if (err)
		return err;

	if (proto_mask == MLX5_PTYS_EN)
		*proto_admin = FUNC0(ptys_reg, out, eth_proto_admin);
	else
		*proto_admin = FUNC0(ptys_reg, out, ib_proto_admin);

	return 0;
}
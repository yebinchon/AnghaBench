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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_REG_PTYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptys_reg ; 

int FUNC4(struct mlx5_core_dev *dev, u32 *ptys,
			 int ptys_size, int proto_mask, u8 local_port)
{
	u32 in[FUNC1(ptys_reg)];
	int err;

	FUNC2(in, 0, sizeof(in));
	FUNC0(ptys_reg, in, local_port, local_port);
	FUNC0(ptys_reg, in, proto_mask, proto_mask);

	err = FUNC3(dev, in, sizeof(in), ptys,
				   ptys_size, MLX5_REG_PTYS, 0, 0);

	return err;
}
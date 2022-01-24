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
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CMD_OP_INIT_HCA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_hca_in ; 
 int /*<<< orphan*/  init_hca_out ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  opcode ; 

int FUNC4(struct mlx5_core_dev *dev)
{
	u32 in[FUNC1(init_hca_in)];
	u32 out[FUNC1(init_hca_out)];

	FUNC2(in, 0, sizeof(in));

	FUNC0(init_hca_in, in, opcode, MLX5_CMD_OP_INIT_HCA);

	FUNC2(out, 0, sizeof(out));
	return FUNC3(dev, in,  sizeof(in), out, sizeof(out));
}
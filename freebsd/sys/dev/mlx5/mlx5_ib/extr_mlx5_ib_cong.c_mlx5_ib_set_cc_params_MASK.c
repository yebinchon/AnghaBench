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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
typedef  enum mlx5_ib_cong_node_type { ____Placeholder_mlx5_ib_cong_node_type } mlx5_ib_cong_node_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_MODIFY_CONG_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cong_protocol ; 
 int /*<<< orphan*/  congestion_parameters ; 
 int /*<<< orphan*/  field_select ; 
 int /*<<< orphan*/  field_select_r_roce_rp ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  modify_cong_params_in ; 
 int /*<<< orphan*/  opcode ; 

__attribute__((used)) static int
FUNC8(struct mlx5_ib_dev *dev, u32 index, u64 var)
{
	int inlen = FUNC2(modify_cong_params_in);
	enum mlx5_ib_cong_node_type node;
	u32 attr_mask = 0;
	void *field;
	void *in;
	int err;

	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	FUNC1(modify_cong_params_in, in, opcode,
		 MLX5_CMD_OP_MODIFY_CONG_PARAMS);

	node = FUNC6(index);
	FUNC1(modify_cong_params_in, in, cong_protocol, node);

	field = FUNC0(modify_cong_params_in, in, congestion_parameters);
	FUNC7(field, index, var, &attr_mask);

	field = FUNC0(modify_cong_params_in, in, field_select);
	FUNC1(field_select_r_roce_rp, field, field_select_r_roce_rp,
		 attr_mask);

	err = FUNC5(dev->mdev, in, inlen);
	FUNC3(in);

	return err;
}
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
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_ACCESS_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  access_register_in ; 
 int /*<<< orphan*/  access_register_out ; 
 int /*<<< orphan*/  argument ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  op_mod ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  register_data ; 
 int /*<<< orphan*/  register_id ; 

int FUNC7(struct mlx5_core_dev *dev, void *data_in,
			 int size_in, void *data_out, int size_out,
			 u16 reg_num, int arg, int write)
{
	int outlen = FUNC2(access_register_out) + size_out;
	int inlen = FUNC2(access_register_in) + size_in;
	int err = -ENOMEM;
	u32 *out = NULL;
	u32 *in = NULL;
	void *data;

	in = FUNC6(inlen);
	out = FUNC6(outlen);
	if (!in || !out)
		goto out;

	data = FUNC0(access_register_in, in, register_data);
	FUNC4(data, data_in, size_in);

	FUNC1(access_register_in, in, opcode, MLX5_CMD_OP_ACCESS_REG);
	FUNC1(access_register_in, in, op_mod, !write);
	FUNC1(access_register_in, in, argument, arg);
	FUNC1(access_register_in, in, register_id, reg_num);

	err = FUNC5(dev, in, inlen, out, outlen);
	if (err)
		goto out;
	data = FUNC0(access_register_out, out, register_data);
	FUNC4(data_out, data, size_out);

out:
	FUNC3(out);
	FUNC3(in);
	return err;
}
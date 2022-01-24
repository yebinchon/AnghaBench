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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CMD_OP_MAD_IFC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mad ; 
 int /*<<< orphan*/  mad_ifc_in ; 
 int /*<<< orphan*/  mad_ifc_out ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  op_mod ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  response_mad_packet ; 

int FUNC8(struct mlx5_core_dev *dev, const void *inb, void *outb,
		      u16 opmod, u8 port)
{
	int outlen = FUNC3(mad_ifc_out);
	int inlen = FUNC3(mad_ifc_in);
	int err = -ENOMEM;
	void *data;
	void *resp;
	u32 *out;
	u32 *in;

	in = FUNC5(inlen, GFP_KERNEL);
	out = FUNC5(outlen, GFP_KERNEL);
	if (!in || !out)
		goto out;

	FUNC2(mad_ifc_in, in, opcode, MLX5_CMD_OP_MAD_IFC);
	FUNC2(mad_ifc_in, in, op_mod, opmod);
	FUNC2(mad_ifc_in, in, port, port);

	data = FUNC0(mad_ifc_in, in, mad);
	FUNC6(data, inb, FUNC1(mad_ifc_in, mad));

	err = FUNC7(dev, in, inlen, out, outlen);
	if (err)
		goto out;

	resp = FUNC0(mad_ifc_out, out, response_mad_packet);
	FUNC6(outb, resp,
	       FUNC1(mad_ifc_out, response_mad_packet));

out:
	FUNC4(out);
	FUNC4(in);
	return err;
}
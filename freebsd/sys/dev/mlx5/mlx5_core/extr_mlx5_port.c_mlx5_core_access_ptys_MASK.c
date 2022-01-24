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
struct mlx5_ptys_reg {void* eth_proto_lp_advertise; void* ib_proto_oper; void* ib_link_width_oper; void* eth_proto_oper; void* ib_proto_admin; void* ib_link_width_admin; void* eth_proto_admin; void* ib_proto_cap; void* ib_link_width_cap; void* eth_proto_cap; void* proto_mask; void* local_port; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_REG_PTYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eth_proto_admin ; 
 int /*<<< orphan*/  eth_proto_capability ; 
 int /*<<< orphan*/  eth_proto_lp_advertise ; 
 int /*<<< orphan*/  eth_proto_oper ; 
 int /*<<< orphan*/  ib_link_width_admin ; 
 int /*<<< orphan*/  ib_link_width_capability ; 
 int /*<<< orphan*/  ib_link_width_oper ; 
 int /*<<< orphan*/  ib_proto_admin ; 
 int /*<<< orphan*/  ib_proto_capability ; 
 int /*<<< orphan*/  ib_proto_oper ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  local_port ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  proto_mask ; 
 int /*<<< orphan*/  ptys_reg ; 

int FUNC7(struct mlx5_core_dev *dev,
			  struct mlx5_ptys_reg *ptys, int write)
{
	int sz = FUNC2(ptys_reg);
	void *out = NULL;
	void *in = NULL;
	int err;

	in = FUNC6(sz);
	if (!in)
		return -ENOMEM;

	out = FUNC6(sz);
	if (!out) {
		FUNC3(in);
		return -ENOMEM;
	}

	FUNC1(ptys_reg, in, local_port, ptys->local_port);
	FUNC1(ptys_reg, in, proto_mask, ptys->proto_mask);
	if (write) {
		FUNC1(ptys_reg, in, eth_proto_capability,
			 ptys->eth_proto_cap);
		FUNC1(ptys_reg, in, ib_link_width_capability,
			 ptys->ib_link_width_cap);
		FUNC1(ptys_reg, in, ib_proto_capability,
			 ptys->ib_proto_cap);
		FUNC1(ptys_reg, in, eth_proto_admin, ptys->eth_proto_admin);
		FUNC1(ptys_reg, in, ib_link_width_admin,
			 ptys->ib_link_width_admin);
		FUNC1(ptys_reg, in, ib_proto_admin, ptys->ib_proto_admin);
		FUNC1(ptys_reg, in, eth_proto_oper, ptys->eth_proto_oper);
		FUNC1(ptys_reg, in, ib_link_width_oper,
			 ptys->ib_link_width_oper);
		FUNC1(ptys_reg, in, ib_proto_oper, ptys->ib_proto_oper);
		FUNC1(ptys_reg, in, eth_proto_lp_advertise,
			 ptys->eth_proto_lp_advertise);
	}

	err = FUNC5(dev, in, sz, out, sz, MLX5_REG_PTYS, 0,
				   !!write);
	if (err)
		goto out;

	if (!write) {
		ptys->local_port = FUNC0(ptys_reg, out, local_port);
		ptys->proto_mask = FUNC0(ptys_reg, out, proto_mask);
		ptys->eth_proto_cap = FUNC0(ptys_reg, out,
					       eth_proto_capability);
		ptys->ib_link_width_cap = FUNC0(ptys_reg, out,
					   ib_link_width_capability);
		ptys->ib_proto_cap = FUNC0(ptys_reg, out,
					      ib_proto_capability);
		ptys->eth_proto_admin = FUNC0(ptys_reg, out,
						 eth_proto_admin);
		ptys->ib_link_width_admin = FUNC0(ptys_reg, out,
						     ib_link_width_admin);
		ptys->ib_proto_admin = FUNC0(ptys_reg, out, ib_proto_admin);
		ptys->eth_proto_oper = FUNC0(ptys_reg, out, eth_proto_oper);
		ptys->ib_link_width_oper = FUNC0(ptys_reg, out,
						    ib_link_width_oper);
		ptys->ib_proto_oper = FUNC0(ptys_reg, out, ib_proto_oper);
		ptys->eth_proto_lp_advertise = FUNC0(ptys_reg, out,
							eth_proto_lp_advertise);
	}

out:
	FUNC4(in);
	FUNC4(out);
	return err;
}
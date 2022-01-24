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
struct mlx5_pmtu_reg {void* oper_mtu; void* admin_mtu; void* max_mtu; void* local_port; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_REG_PMTU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  admin_mtu ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  local_port ; 
 int /*<<< orphan*/  max_mtu ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (struct mlx5_core_dev*,void*) ; 
 int /*<<< orphan*/  oper_mtu ; 
 int /*<<< orphan*/  pmtu_reg ; 

int FUNC8(struct mlx5_core_dev *dev,
			  struct mlx5_pmtu_reg *pmtu, int write)
{
	int sz = FUNC2(pmtu_reg);
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

	FUNC1(pmtu_reg, in, local_port, pmtu->local_port);
	if (write)
		FUNC1(pmtu_reg, in, admin_mtu, pmtu->admin_mtu);

	err = FUNC5(dev, in, sz, out, sz, MLX5_REG_PMTU, 0,
				   !!write);
	if (err)
		goto out;

	if (!write) {
		pmtu->local_port = FUNC0(pmtu_reg, out, local_port);
		pmtu->max_mtu = FUNC7(dev, FUNC0(pmtu_reg, out,
						       max_mtu));
		pmtu->admin_mtu = FUNC7(dev, FUNC0(pmtu_reg, out,
							 admin_mtu));
		pmtu->oper_mtu = FUNC7(dev, FUNC0(pmtu_reg, out,
							oper_mtu));
	}

out:
	FUNC4(in);
	FUNC4(out);
	return err;
}
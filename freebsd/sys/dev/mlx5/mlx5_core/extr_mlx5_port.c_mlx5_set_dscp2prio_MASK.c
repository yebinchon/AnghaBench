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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_MAX_SUPPORTED_DSCP ; 
 int /*<<< orphan*/  MLX5_REG_QPDPM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dscp ; 
 int /*<<< orphan*/  e ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  local_port ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,int) ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  prio ; 
 int /*<<< orphan*/  qpdpm_dscp_reg ; 
 int /*<<< orphan*/  qpdpm_reg ; 

int FUNC8(struct mlx5_core_dev *mdev, const u8 *dscp2prio)
{
	int sz = FUNC3(qpdpm_reg);
	void *qpdpm_dscp;
	void *out;
	void *in;
	int err;
	int i;

	in = FUNC5(sz, GFP_KERNEL);
	out = FUNC5(sz, GFP_KERNEL);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	FUNC1(qpdpm_reg, in, local_port, 1);
	err = FUNC7(mdev, in, sz, out, sz, MLX5_REG_QPDPM, 0, 0);
	if (err)
		goto out;

	FUNC6(in, out, sz);
	FUNC1(qpdpm_reg, in, local_port, 1);

	/* Update the corresponding dscp entry */
	for (i = 0; i < MLX5_MAX_SUPPORTED_DSCP; i++) {
		qpdpm_dscp = FUNC0(qpdpm_reg, in, dscp[i]);
		FUNC2(qpdpm_dscp_reg, qpdpm_dscp, prio, dscp2prio[i]);
		FUNC2(qpdpm_dscp_reg, qpdpm_dscp, e, 1);
	}
	err = FUNC7(mdev, in, sz, out, sz, MLX5_REG_QPDPM, 0, 1);
out:
	FUNC4(in);
	FUNC4(out);
	return err;
}
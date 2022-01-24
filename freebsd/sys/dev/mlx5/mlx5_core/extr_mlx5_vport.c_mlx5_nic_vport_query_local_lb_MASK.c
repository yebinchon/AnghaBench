#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_local_lb_selection { ____Placeholder_mlx5_local_lb_selection } mlx5_local_lb_selection ;
struct TYPE_2__ {int /*<<< orphan*/  disable_uc_local_lb; int /*<<< orphan*/  disable_mc_local_lb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_LOCAL_MC_LB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*,int) ; 
 TYPE_1__ nic_vport_context ; 
 int /*<<< orphan*/  query_nic_vport_context_out ; 

int FUNC5(struct mlx5_core_dev *mdev,
				  enum mlx5_local_lb_selection selection,
				  u8 *value)
{
	void *out;
	int outlen = FUNC1(query_nic_vport_context_out);
	int err;

	out = FUNC3(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	err = FUNC4(mdev, 0, out, outlen);
	if (err)
		goto done;

	if (selection == MLX5_LOCAL_MC_LB)
		*value = FUNC0(query_nic_vport_context_out, out,
				  nic_vport_context.disable_mc_local_lb);
	else
		*value = FUNC0(query_nic_vport_context_out, out,
				  nic_vport_context.disable_uc_local_lb);

done:
	FUNC2(out);
	return err;
}
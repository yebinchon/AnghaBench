#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_local_lb_selection { ____Placeholder_mlx5_local_lb_selection } mlx5_local_lb_selection ;
struct TYPE_4__ {int /*<<< orphan*/  disable_uc_local_lb; int /*<<< orphan*/  disable_mc_local_lb; } ;
struct TYPE_3__ {int /*<<< orphan*/  disable_uc_local_lb; int /*<<< orphan*/  disable_mc_local_lb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MLX5_LOCAL_MC_LB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ field_select ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_1__ nic_vport_context ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC6(struct mlx5_core_dev *mdev,
				   enum mlx5_local_lb_selection selection,
				   u8 value)
{
	void *in;
	int inlen = FUNC1(modify_nic_vport_context_in);
	int err;

	in = FUNC5(inlen);
	if (!in) {
		FUNC3(mdev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	FUNC0(modify_nic_vport_context_in, in, vport_number, 0);

	if (selection == MLX5_LOCAL_MC_LB) {
		FUNC0(modify_nic_vport_context_in, in,
			 field_select.disable_mc_local_lb, 1);
		FUNC0(modify_nic_vport_context_in, in,
			 nic_vport_context.disable_mc_local_lb,
			 value);
	} else {
		FUNC0(modify_nic_vport_context_in, in,
			 field_select.disable_uc_local_lb, 1);
		FUNC0(modify_nic_vport_context_in, in,
			 nic_vport_context.disable_uc_local_lb,
			 value);
	}

	err = FUNC4(mdev, in, inlen);

	FUNC2(in);
	return err;
}
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
typedef  int /*<<< orphan*/  in ;
struct TYPE_2__ {int promisc; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  nic_vport_context ; 
 int other_vport ; 
 int vport_number ; 

int FUNC5(struct mlx5_core_dev *mdev, int vport,
			       bool promisc_mc, bool promisc_uc,
			       bool promisc_all)
{
	u8  in[FUNC2(modify_nic_vport_context_in)];
	u8 *ctx = FUNC0(modify_nic_vport_context_in, in,
			       nic_vport_context);

	FUNC3(in, 0, FUNC2(modify_nic_vport_context_in));

	FUNC1(modify_nic_vport_context_in, in, vport_number, vport);
	if (vport)
		FUNC1(modify_nic_vport_context_in, in,
			 other_vport, 1);
	FUNC1(modify_nic_vport_context_in, in, field_select.promisc, 1);
	if (promisc_mc)
		FUNC1(nic_vport_context, ctx, promisc_mc, 1);
	if (promisc_uc)
		FUNC1(nic_vport_context, ctx, promisc_uc, 1);
	if (promisc_all)
		FUNC1(nic_vport_context, ctx, promisc_all, 1);

	return FUNC4(mdev, in, sizeof(in));
}
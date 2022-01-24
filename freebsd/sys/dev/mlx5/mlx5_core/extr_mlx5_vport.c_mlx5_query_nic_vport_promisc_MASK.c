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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  promisc_all; int /*<<< orphan*/  promisc_mc; int /*<<< orphan*/  promisc_uc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ nic_vport_context ; 
 int /*<<< orphan*/  query_nic_vport_context_out ; 

int FUNC5(struct mlx5_core_dev *mdev,
				 u16 vport,
				 int *promisc_uc,
				 int *promisc_mc,
				 int *promisc_all)
{
	u32 *out;
	int outlen = FUNC1(query_nic_vport_context_out);
	int err;

	out = FUNC3(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	err = FUNC4(mdev, vport, out, outlen);
	if (err)
		goto out;

	*promisc_uc = FUNC0(query_nic_vport_context_out, out,
			       nic_vport_context.promisc_uc);
	*promisc_mc = FUNC0(query_nic_vport_context_out, out,
			       nic_vport_context.promisc_mc);
	*promisc_all = FUNC0(query_nic_vport_context_out, out,
				nic_vport_context.promisc_all);

out:
	FUNC2(out);
	return err;
}
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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  permanent_address; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 TYPE_1__ nic_vport_context ; 
 int /*<<< orphan*/  query_nic_vport_context_out ; 

int FUNC6(struct mlx5_core_dev *mdev,
				     u16 vport, u8 *addr)
{
	u32 *out;
	int outlen = FUNC1(query_nic_vport_context_out);
	u8 *out_addr;
	int err;

	out = FUNC5(outlen);
	if (!out)
		return -ENOMEM;

	out_addr = FUNC0(query_nic_vport_context_out, out,
				nic_vport_context.permanent_address);

	err = FUNC4(mdev, vport, out, outlen);
	if (err)
		goto out;

	FUNC2(addr, &out_addr[2]);

out:
	FUNC3(out);
	return err;
}
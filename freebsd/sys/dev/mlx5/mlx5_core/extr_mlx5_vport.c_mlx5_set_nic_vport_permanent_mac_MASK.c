#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  permanent_address; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac_addr_47_32; } ;
struct TYPE_5__ {TYPE_1__ permanent_address; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ field_select ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_2__ nic_vport_context ; 
 int /*<<< orphan*/  opcode ; 
 int /*<<< orphan*/  other_vport ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC8(struct mlx5_core_dev *mdev, int vport,
				     u8 *addr)
{
	void *in;
	int inlen = FUNC2(modify_nic_vport_context_in);
	u8  *mac_ptr;
	int err;

	in = FUNC7(inlen);
	if (!in) {
		FUNC5(mdev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	FUNC1(modify_nic_vport_context_in, in,
		 opcode, MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT);
	FUNC1(modify_nic_vport_context_in, in, vport_number, vport);
	FUNC1(modify_nic_vport_context_in, in, other_vport, 1);
	FUNC1(modify_nic_vport_context_in, in,
		 field_select.permanent_address, 1);
	mac_ptr = (u8 *)FUNC0(modify_nic_vport_context_in, in,
		nic_vport_context.permanent_address.mac_addr_47_32);
	FUNC3(mac_ptr, addr);

	err = FUNC6(mdev, in, inlen);

	FUNC4(in);

	return err;
}
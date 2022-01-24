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
typedef  void u8 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int addresses_list; } ;
struct TYPE_3__ {int allowed_list_type; int allowed_list_size; int /*<<< orphan*/  current_uc_mac_address; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT ; 
 int MLX5_NIC_VPORT_LIST_TYPE_UC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 TYPE_2__ field_select ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  mac_addr_47_32 ; 
 int /*<<< orphan*/  mac_address_layout ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 TYPE_1__ nic_vport_context ; 
 int opcode ; 
 int vport_number ; 

int FUNC8(struct mlx5_core_dev *mdev, int vport,
				   bool other_vport, u8 *addr)
{
	void *in;
	int inlen = FUNC2(modify_nic_vport_context_in)
		  + FUNC2(mac_address_layout);
	u8  *mac_layout;
	u8  *mac_ptr;
	int err;

	in = FUNC7(inlen);
	if (!in) {
		FUNC5(mdev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	FUNC1(modify_nic_vport_context_in, in,
		 opcode, MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT);
	FUNC1(modify_nic_vport_context_in, in,
		 vport_number, vport);
	FUNC1(modify_nic_vport_context_in, in,
		 other_vport, other_vport);
	FUNC1(modify_nic_vport_context_in, in,
		 field_select.addresses_list, 1);
	FUNC1(modify_nic_vport_context_in, in,
		 nic_vport_context.allowed_list_type,
		 MLX5_NIC_VPORT_LIST_TYPE_UC);
	FUNC1(modify_nic_vport_context_in, in,
		 nic_vport_context.allowed_list_size, 1);

	mac_layout = (u8 *)FUNC0(modify_nic_vport_context_in, in,
		nic_vport_context.current_uc_mac_address);
	mac_ptr = (u8 *)FUNC0(mac_address_layout, mac_layout,
		mac_addr_47_32);
	FUNC3(mac_ptr, addr);

	err = FUNC6(mdev, in, inlen);

	FUNC4(in);

	return err;
}
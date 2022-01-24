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
typedef  void u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addresses_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 size_t MLX5_NIC_VPORT_LIST_TYPE_MC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowed_list_size ; 
 int /*<<< orphan*/  allowed_list_type ; 
 int /*<<< orphan*/ * current_uc_mac_address ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  log_max_current_mc_list ; 
 int /*<<< orphan*/  mac_addr_47_32 ; 
 int /*<<< orphan*/  mac_address_layout ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC7 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  nic_vport_context ; 
 int /*<<< orphan*/  other_vport ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC9(struct mlx5_core_dev *mdev, int vport,
			       u64 *addr_list, size_t addr_list_len)
{
	void *in, *ctx;
	int  inlen = FUNC3(modify_nic_vport_context_in)
		  + FUNC3(mac_address_layout) * (int)addr_list_len;
	int err;
	size_t i;
	int max_list_sz = 1 << FUNC1(mdev, log_max_current_mc_list);

	if ((int)addr_list_len > max_list_sz) {
		FUNC6(mdev, "Requested list size (%d) > (%d) max_list_size\n",
			       (int)addr_list_len, max_list_sz);
		return -ENOSPC;
	}

	in = FUNC8(inlen);
	if (!in) {
		FUNC6(mdev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	FUNC2(modify_nic_vport_context_in, in, vport_number, vport);
	if (vport)
		FUNC2(modify_nic_vport_context_in, in,
			 other_vport, 1);
	FUNC2(modify_nic_vport_context_in, in,
		 field_select.addresses_list, 1);

	ctx = FUNC0(modify_nic_vport_context_in, in, nic_vport_context);

	FUNC2(nic_vport_context, ctx, allowed_list_type,
		 MLX5_NIC_VPORT_LIST_TYPE_MC);
	FUNC2(nic_vport_context, ctx, allowed_list_size, addr_list_len);

	for (i = 0; i < addr_list_len; i++) {
		u8 *mac_lout = (u8 *)FUNC0(nic_vport_context, ctx,
						  current_uc_mac_address[i]);
		u8 *mac_ptr = (u8 *)FUNC0(mac_address_layout, mac_lout,
						 mac_addr_47_32);
		FUNC4(mac_ptr, (u8 *)&addr_list[i]);
	}

	err = FUNC7(mdev, in, inlen);

	FUNC5(in);

	return err;
}
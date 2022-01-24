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
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addresses_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_NIC_VPORT_LIST_TYPE_VLAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowed_list_size ; 
 int /*<<< orphan*/  allowed_list_type ; 
 int /*<<< orphan*/ * current_uc_mac_address ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  log_max_vlan_list ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC6 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  nic_vport_context ; 
 int /*<<< orphan*/  other_vport ; 
 int /*<<< orphan*/  vlan ; 
 int /*<<< orphan*/  vlan_layout ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC8(struct mlx5_core_dev *dev, u16 vport,
				 u16 *vlan_list, int list_len)
{
	void *in, *ctx;
	int i, err;
	int  inlen = FUNC3(modify_nic_vport_context_in)
		+ FUNC3(vlan_layout) * (int)list_len;

	int max_list_size = 1 << FUNC1(dev, log_max_vlan_list);

	if (list_len > max_list_size) {
		FUNC5(dev, "Requested list size (%d) > (%d) max_list_size\n",
			       list_len, max_list_size);
		return -ENOSPC;
	}

	in = FUNC7(inlen);
	if (!in) {
		FUNC5(dev, "failed to allocate inbox\n");
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
		 MLX5_NIC_VPORT_LIST_TYPE_VLAN);
	FUNC2(nic_vport_context, ctx, allowed_list_size, list_len);

	for (i = 0; i < list_len; i++) {
		u8 *vlan_lout = FUNC0(nic_vport_context, ctx,
					 current_uc_mac_address[i]);
		FUNC2(vlan_layout, vlan_lout, vlan, vlan_list[i]);
	}

	err = FUNC6(dev, in, inlen);

	FUNC4(in);
	return err;
}
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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  node_guid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 int EPERM ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ field_select ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,char*) ; 
 int FUNC8 (struct mlx5_core_dev*,void*,int) ; 
 void* FUNC9 (int) ; 
 int /*<<< orphan*/  modify_nic_vport_context_in ; 
 int /*<<< orphan*/  nic_vport_node_guid_modify ; 
 int /*<<< orphan*/  other_vport ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int /*<<< orphan*/  vport_number ; 

int FUNC10(struct mlx5_core_dev *mdev,
				    u32 vport, u64 node_guid)
{
	void *in;
	int inlen = FUNC5(modify_nic_vport_context_in);
	int err;
	void *nic_vport_context;

	if (!vport)
		return -EINVAL;
	if (!FUNC2(mdev, vport_group_manager))
		return -EPERM;
	if (!FUNC1(mdev, nic_vport_node_guid_modify))
		return -ENOTSUPP;

	in = FUNC9(inlen);
	if (!in) {
		FUNC7(mdev, "failed to allocate inbox\n");
		return -ENOMEM;
	}

	FUNC3(modify_nic_vport_context_in, in,
		 field_select.node_guid, 1);
	FUNC3(modify_nic_vport_context_in, in, vport_number, vport);

	FUNC3(modify_nic_vport_context_in, in, other_vport, 1);

	nic_vport_context = FUNC0(modify_nic_vport_context_in,
					 in, nic_vport_context);
	FUNC4(nic_vport_context, nic_vport_context, node_guid, node_guid);

	err = FUNC8(mdev, in, inlen);

	FUNC6(in);

	return err;
}
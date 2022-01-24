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
struct TYPE_2__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  int u8 ;
typedef  int u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,union ib_gid*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_CMD_OP_QUERY_HCA_VPORT_GID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gid_table_size ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (struct mlx5_core_dev*,void*,int,void*,int) ; 
 int FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  num_ports ; 
 int opcode ; 
 int other_vport ; 
 int /*<<< orphan*/  query_hca_vport_gid_in ; 
 int /*<<< orphan*/  query_hca_vport_gid_out ; 
 int /*<<< orphan*/  vport_group_manager ; 
 int vport_number ; 

int FUNC8(struct mlx5_core_dev *dev, u8 port_num,
			     u16 vport_num, u16 gid_index, union ib_gid *gid)
{
	int in_sz = FUNC3(query_hca_vport_gid_in);
	int out_sz = FUNC3(query_hca_vport_gid_out);
	int is_group_manager;
	void *out = NULL;
	void *in = NULL;
	union ib_gid *tmp;
	int tbsz;
	int nout;
	int err;

	is_group_manager = FUNC1(dev, vport_group_manager);
	tbsz = FUNC6(FUNC1(dev, gid_table_size));

	if (gid_index > tbsz && gid_index != 0xffff)
		return -EINVAL;

	if (gid_index == 0xffff)
		nout = tbsz;
	else
		nout = 1;

	out_sz += nout * sizeof(*gid);

	in = FUNC7(in_sz);
	out = FUNC7(out_sz);
	if (!in || !out) {
		err = -ENOMEM;
		goto out;
	}

	FUNC2(query_hca_vport_gid_in, in, opcode,
		 MLX5_CMD_OP_QUERY_HCA_VPORT_GID);
	if (vport_num) {
		if (is_group_manager) {
			FUNC2(query_hca_vport_gid_in, in, vport_number,
				 vport_num);
			FUNC2(query_hca_vport_gid_in, in, other_vport, 1);
		} else {
			err = -EPERM;
			goto out;
		}
	}

	FUNC2(query_hca_vport_gid_in, in, gid_index, gid_index);

	if (FUNC1(dev, num_ports) == 2)
		FUNC2(query_hca_vport_gid_in, in, port_num, port_num);

	err = FUNC5(dev, in, in_sz, out, out_sz);
	if (err)
		goto out;

	tmp = (union ib_gid *)FUNC0(query_hca_vport_gid_out, out, gid);
	gid->global.subnet_prefix = tmp->global.subnet_prefix;
	gid->global.interface_id = tmp->global.interface_id;

out:
	FUNC4(in);
	FUNC4(out);
	return err;
}
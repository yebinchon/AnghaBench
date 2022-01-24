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
typedef  int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {TYPE_1__* port_caps; } ;
struct ib_smp {int* data; void* attr_mod; int /*<<< orphan*/  attr_id; } ;
struct ib_port_attr {int lmc; int sm_sl; int state; int phys_state; int port_cap_flags; int gid_tbl_len; int max_msg_sz; int active_width; int active_speed; int max_mtu; int active_mtu; int subnet_timeout; int max_vl_num; int init_type_reply; void* qkey_viol_cntr; void* bad_pkey_cntr; int /*<<< orphan*/  pkey_tbl_len; void* sm_lid; void* lid; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int ext_port_cap; int /*<<< orphan*/  pkey_table_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_PORT_EXTENDED_SPEEDS_SUP ; 
 int /*<<< orphan*/  IB_SMP_ATTR_PORT_INFO ; 
 int /*<<< orphan*/  MLX5_ATTR_EXTENDED_PORT_INFO ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_smp*) ; 
 struct ib_smp* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_msg ; 
 int /*<<< orphan*/  FUNC8 (struct ib_port_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct mlx5_ib_dev*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  num_ports ; 
 struct mlx5_ib_dev* FUNC11 (struct ib_device*) ; 

int FUNC12(struct ib_device *ibdev, u8 port,
			    struct ib_port_attr *props)
{
	struct mlx5_ib_dev *dev = FUNC11(ibdev);
	struct mlx5_core_dev *mdev = dev->mdev;
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int ext_active_speed;
	int err = -ENOMEM;

	if (port < 1 || port > FUNC0(mdev, num_ports)) {
		FUNC10(dev, "invalid port number %d\n", port);
		return -EINVAL;
	}

	in_mad  = FUNC7(sizeof(*in_mad), GFP_KERNEL);
	out_mad = FUNC6(sizeof(*out_mad), GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	FUNC8(props, 0, sizeof(*props));

	FUNC4(in_mad);
	in_mad->attr_id  = IB_SMP_ATTR_PORT_INFO;
	in_mad->attr_mod = FUNC3(port);

	err = FUNC9(dev, 1, 1, port, NULL, NULL, in_mad, out_mad);
	if (err) {
		FUNC10(dev, "err %d\n", err);
		goto out;
	}

	props->lid		= FUNC1((__be16 *)(out_mad->data + 16));
	props->lmc		= out_mad->data[34] & 0x7;
	props->sm_lid		= FUNC1((__be16 *)(out_mad->data + 18));
	props->sm_sl		= out_mad->data[36] & 0xf;
	props->state		= out_mad->data[32] & 0xf;
	props->phys_state	= out_mad->data[33] >> 4;
	props->port_cap_flags	= FUNC2((__be32 *)(out_mad->data + 20));
	props->gid_tbl_len	= out_mad->data[50];
	props->max_msg_sz	= 1 << FUNC0(mdev, log_max_msg);
	props->pkey_tbl_len	= mdev->port_caps[port - 1].pkey_table_len;
	props->bad_pkey_cntr	= FUNC1((__be16 *)(out_mad->data + 46));
	props->qkey_viol_cntr	= FUNC1((__be16 *)(out_mad->data + 48));
	props->active_width	= out_mad->data[31] & 0xf;
	props->active_speed	= out_mad->data[35] >> 4;
	props->max_mtu		= out_mad->data[41] & 0xf;
	props->active_mtu	= out_mad->data[36] >> 4;
	props->subnet_timeout	= out_mad->data[51] & 0x1f;
	props->max_vl_num	= out_mad->data[37] >> 4;
	props->init_type_reply	= out_mad->data[41] >> 4;

	/* Check if extended speeds (EDR/FDR/...) are supported */
	if (props->port_cap_flags & IB_PORT_EXTENDED_SPEEDS_SUP) {
		ext_active_speed = out_mad->data[62] >> 4;

		switch (ext_active_speed) {
		case 1:
			props->active_speed = 16; /* FDR */
			break;
		case 2:
			props->active_speed = 32; /* EDR */
			break;
		}
	}

	/* If reported active speed is QDR, check if is FDR-10 */
	if (props->active_speed == 4) {
		if (mdev->port_caps[port - 1].ext_port_cap &
		    MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO) {
			FUNC4(in_mad);
			in_mad->attr_id = MLX5_ATTR_EXTENDED_PORT_INFO;
			in_mad->attr_mod = FUNC3(port);

			err = FUNC9(dev, 1, 1, port,
					   NULL, NULL, in_mad, out_mad);
			if (err)
				goto out;

			/* Checking LinkSpeedActive for FDR-10 */
			if (out_mad->data[15] & 0x1)
				props->active_speed = 8;
		}
	}

out:
	FUNC5(in_mad);
	FUNC5(out_mad);

	return err;
}
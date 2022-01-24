#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_pvlc_reg {int max_msg_sz; int /*<<< orphan*/  max_vl_num; int /*<<< orphan*/  vl_hw_cap; void* local_port; int /*<<< orphan*/  active_mtu; int /*<<< orphan*/  max_mtu; void* active_speed; int /*<<< orphan*/  active_width; void* grh_required; void* init_type_reply; void* subnet_timeout; void* qkey_viol_cntr; void* bad_pkey_cntr; int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  gid_tbl_len; void* port_cap_flags; void* phys_state; void* state; void* sm_sl; void* sm_lid; void* lmc; void* lid; } ;
struct mlx5_ptys_reg {int /*<<< orphan*/  oper_mtu; int /*<<< orphan*/  max_mtu; void* local_port; scalar_t__ ib_proto_oper; int /*<<< orphan*/  ib_link_width_oper; int /*<<< orphan*/  proto_mask; } ;
struct mlx5_pmtu_reg {int /*<<< orphan*/  oper_mtu; int /*<<< orphan*/  max_mtu; void* local_port; scalar_t__ ib_proto_oper; int /*<<< orphan*/  ib_link_width_oper; int /*<<< orphan*/  proto_mask; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_port_attr {int max_msg_sz; int /*<<< orphan*/  max_vl_num; int /*<<< orphan*/  vl_hw_cap; void* local_port; int /*<<< orphan*/  active_mtu; int /*<<< orphan*/  max_mtu; void* active_speed; int /*<<< orphan*/  active_width; void* grh_required; void* init_type_reply; void* subnet_timeout; void* qkey_viol_cntr; void* bad_pkey_cntr; int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  gid_tbl_len; void* port_cap_flags; void* phys_state; void* state; void* sm_sl; void* sm_lid; void* lmc; void* lid; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  pvlc ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_PTYS_IB ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap_mask1 ; 
 int /*<<< orphan*/  gid_table_size ; 
 int /*<<< orphan*/  grh_required ; 
 int /*<<< orphan*/  hca_vport_context ; 
 int /*<<< orphan*/  init_type_reply ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ptys_reg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx5_ptys_reg* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lid ; 
 int /*<<< orphan*/  lmc ; 
 int /*<<< orphan*/  log_max_msg ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_pvlc_reg*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mlx5_core_dev*,struct mlx5_ptys_reg*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mlx5_core_dev*,struct mlx5_ptys_reg*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx5_core_dev*,struct mlx5_pvlc_reg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct mlx5_core_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 
 int /*<<< orphan*/  pkey_table_size ; 
 int /*<<< orphan*/  pkey_violation_counter ; 
 int /*<<< orphan*/  port_physical_state ; 
 int /*<<< orphan*/  qkey_violation_counter ; 
 int /*<<< orphan*/  query_hca_vport_context_out ; 
 int /*<<< orphan*/  sm_lid ; 
 int /*<<< orphan*/  sm_sl ; 
 int /*<<< orphan*/  subnet_timeout ; 
 struct mlx5_ib_dev* FUNC15 (struct ib_device*) ; 
 int FUNC16 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vport_state ; 

__attribute__((used)) static int FUNC18(struct ib_device *ibdev, u8 port,
			       struct ib_port_attr *props)
{
	struct mlx5_ib_dev *dev = FUNC15(ibdev);
	struct mlx5_core_dev *mdev = dev->mdev;
	u32 *rep;
	int replen = FUNC3(query_hca_vport_context_out);
	struct mlx5_ptys_reg *ptys;
	struct mlx5_pmtu_reg *pmtu;
	struct mlx5_pvlc_reg pvlc;
	void *ctx;
	int err;

	rep = FUNC14(replen);
	ptys = FUNC6(sizeof(*ptys), GFP_KERNEL);
	pmtu = FUNC6(sizeof(*pmtu), GFP_KERNEL);
	if (!rep || !ptys || !pmtu) {
		err = -ENOMEM;
		goto out;
	}

	FUNC7(props, 0, sizeof(*props));

	err = FUNC12(mdev, port, 0, rep, replen);
	if (err)
		goto out;

	ctx = FUNC0(query_hca_vport_context_out, rep, hca_vport_context);

	props->lid		= FUNC2(hca_vport_context, ctx, lid);
	props->lmc		= FUNC2(hca_vport_context, ctx, lmc);
	props->sm_lid		= FUNC2(hca_vport_context, ctx, sm_lid);
	props->sm_sl		= FUNC2(hca_vport_context, ctx, sm_sl);
	props->state		= FUNC2(hca_vport_context, ctx, vport_state);
	props->phys_state	= FUNC2(hca_vport_context, ctx,
					port_physical_state);
	props->port_cap_flags	= FUNC2(hca_vport_context, ctx, cap_mask1);
	props->gid_tbl_len	= FUNC11(FUNC1(mdev, gid_table_size));
	props->max_msg_sz	= 1 << FUNC1(mdev, log_max_msg);
	props->pkey_tbl_len	= FUNC13(FUNC1(mdev, pkey_table_size));
	props->bad_pkey_cntr	= FUNC2(hca_vport_context, ctx,
					pkey_violation_counter);
	props->qkey_viol_cntr	= FUNC2(hca_vport_context, ctx,
					qkey_violation_counter);
	props->subnet_timeout	= FUNC2(hca_vport_context, ctx,
					subnet_timeout);
	props->init_type_reply	= FUNC2(hca_vport_context, ctx,
					init_type_reply);
	props->grh_required	= FUNC2(hca_vport_context, ctx, grh_required);

	ptys->proto_mask |= MLX5_PTYS_IB;
	ptys->local_port = port;
	err = FUNC9(mdev, ptys, 0);
	if (err)
		goto out;

	err = FUNC16(ibdev, ptys->ib_link_width_oper,
				     &props->active_width);
	if (err)
		goto out;

	props->active_speed	= (u8)ptys->ib_proto_oper;

	pmtu->local_port = port;
	err = FUNC8(mdev, pmtu, 0);
	if (err)
		goto out;

	props->max_mtu		= pmtu->max_mtu;
	props->active_mtu	= pmtu->oper_mtu;

	FUNC7(&pvlc, 0, sizeof(pvlc));
	pvlc.local_port = port;
	err = FUNC10(mdev, &pvlc, 0);
	if (err)
		goto out;

	err = FUNC17(ibdev, pvlc.vl_hw_cap,
				   &props->max_vl_num);
out:
	FUNC5(rep);
	FUNC4(ptys);
	FUNC4(pmtu);
	return err;
}
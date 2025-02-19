
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct mlx5_pvlc_reg {int max_msg_sz; int max_vl_num; int vl_hw_cap; void* local_port; int active_mtu; int max_mtu; void* active_speed; int active_width; void* grh_required; void* init_type_reply; void* subnet_timeout; void* qkey_viol_cntr; void* bad_pkey_cntr; int pkey_tbl_len; int gid_tbl_len; void* port_cap_flags; void* phys_state; void* state; void* sm_sl; void* sm_lid; void* lmc; void* lid; } ;
struct mlx5_ptys_reg {int oper_mtu; int max_mtu; void* local_port; scalar_t__ ib_proto_oper; int ib_link_width_oper; int proto_mask; } ;
struct mlx5_pmtu_reg {int oper_mtu; int max_mtu; void* local_port; scalar_t__ ib_proto_oper; int ib_link_width_oper; int proto_mask; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_port_attr {int max_msg_sz; int max_vl_num; int vl_hw_cap; void* local_port; int active_mtu; int max_mtu; void* active_speed; int active_width; void* grh_required; void* init_type_reply; void* subnet_timeout; void* qkey_viol_cntr; void* bad_pkey_cntr; int pkey_tbl_len; int gid_tbl_len; void* port_cap_flags; void* phys_state; void* state; void* sm_sl; void* sm_lid; void* lmc; void* lid; } ;
struct ib_device {int dummy; } ;
typedef int pvlc ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 void* MLX5_GET (int ,void*,int ) ;
 int MLX5_PTYS_IB ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int cap_mask1 ;
 int gid_table_size ;
 int grh_required ;
 int hca_vport_context ;
 int init_type_reply ;
 int kfree (struct mlx5_ptys_reg*) ;
 int kvfree (int *) ;
 struct mlx5_ptys_reg* kzalloc (int,int ) ;
 int lid ;
 int lmc ;
 int log_max_msg ;
 int memset (struct mlx5_pvlc_reg*,int ,int) ;
 int mlx5_core_access_pmtu (struct mlx5_core_dev*,struct mlx5_ptys_reg*,int ) ;
 int mlx5_core_access_ptys (struct mlx5_core_dev*,struct mlx5_ptys_reg*,int ) ;
 int mlx5_core_access_pvlc (struct mlx5_core_dev*,struct mlx5_pvlc_reg*,int ) ;
 int mlx5_get_gid_table_len (int) ;
 int mlx5_query_hca_vport_context (struct mlx5_core_dev*,void*,int ,int *,int) ;
 int mlx5_to_sw_pkey_sz (int) ;
 int * mlx5_vzalloc (int) ;
 int pkey_table_size ;
 int pkey_violation_counter ;
 int port_physical_state ;
 int qkey_violation_counter ;
 int query_hca_vport_context_out ;
 int sm_lid ;
 int sm_sl ;
 int subnet_timeout ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;
 int translate_active_width (struct ib_device*,int ,int *) ;
 int translate_max_vl_num (struct ib_device*,int ,int *) ;
 int vport_state ;

__attribute__((used)) static int mlx5_query_hca_port(struct ib_device *ibdev, u8 port,
          struct ib_port_attr *props)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev = dev->mdev;
 u32 *rep;
 int replen = MLX5_ST_SZ_BYTES(query_hca_vport_context_out);
 struct mlx5_ptys_reg *ptys;
 struct mlx5_pmtu_reg *pmtu;
 struct mlx5_pvlc_reg pvlc;
 void *ctx;
 int err;

 rep = mlx5_vzalloc(replen);
 ptys = kzalloc(sizeof(*ptys), GFP_KERNEL);
 pmtu = kzalloc(sizeof(*pmtu), GFP_KERNEL);
 if (!rep || !ptys || !pmtu) {
  err = -ENOMEM;
  goto out;
 }

 memset(props, 0, sizeof(*props));

 err = mlx5_query_hca_vport_context(mdev, port, 0, rep, replen);
 if (err)
  goto out;

 ctx = MLX5_ADDR_OF(query_hca_vport_context_out, rep, hca_vport_context);

 props->lid = MLX5_GET(hca_vport_context, ctx, lid);
 props->lmc = MLX5_GET(hca_vport_context, ctx, lmc);
 props->sm_lid = MLX5_GET(hca_vport_context, ctx, sm_lid);
 props->sm_sl = MLX5_GET(hca_vport_context, ctx, sm_sl);
 props->state = MLX5_GET(hca_vport_context, ctx, vport_state);
 props->phys_state = MLX5_GET(hca_vport_context, ctx,
     port_physical_state);
 props->port_cap_flags = MLX5_GET(hca_vport_context, ctx, cap_mask1);
 props->gid_tbl_len = mlx5_get_gid_table_len(MLX5_CAP_GEN(mdev, gid_table_size));
 props->max_msg_sz = 1 << MLX5_CAP_GEN(mdev, log_max_msg);
 props->pkey_tbl_len = mlx5_to_sw_pkey_sz(MLX5_CAP_GEN(mdev, pkey_table_size));
 props->bad_pkey_cntr = MLX5_GET(hca_vport_context, ctx,
     pkey_violation_counter);
 props->qkey_viol_cntr = MLX5_GET(hca_vport_context, ctx,
     qkey_violation_counter);
 props->subnet_timeout = MLX5_GET(hca_vport_context, ctx,
     subnet_timeout);
 props->init_type_reply = MLX5_GET(hca_vport_context, ctx,
     init_type_reply);
 props->grh_required = MLX5_GET(hca_vport_context, ctx, grh_required);

 ptys->proto_mask |= MLX5_PTYS_IB;
 ptys->local_port = port;
 err = mlx5_core_access_ptys(mdev, ptys, 0);
 if (err)
  goto out;

 err = translate_active_width(ibdev, ptys->ib_link_width_oper,
         &props->active_width);
 if (err)
  goto out;

 props->active_speed = (u8)ptys->ib_proto_oper;

 pmtu->local_port = port;
 err = mlx5_core_access_pmtu(mdev, pmtu, 0);
 if (err)
  goto out;

 props->max_mtu = pmtu->max_mtu;
 props->active_mtu = pmtu->oper_mtu;

 memset(&pvlc, 0, sizeof(pvlc));
 pvlc.local_port = port;
 err = mlx5_core_access_pvlc(mdev, &pvlc, 0);
 if (err)
  goto out;

 err = translate_max_vl_num(ibdev, pvlc.vl_hw_cap,
       &props->max_vl_num);
out:
 kvfree(rep);
 kfree(ptys);
 kfree(pmtu);
 return err;
}

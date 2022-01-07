
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;
typedef int in ;
struct TYPE_2__ {int promisc; } ;


 int * MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_SET (int ,int *,int,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 TYPE_1__ field_select ;
 int memset (int *,int ,int) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,int *,int) ;
 int modify_nic_vport_context_in ;
 int nic_vport_context ;
 int other_vport ;
 int vport_number ;

int mlx5_set_nic_vport_promisc(struct mlx5_core_dev *mdev, int vport,
          bool promisc_mc, bool promisc_uc,
          bool promisc_all)
{
 u8 in[MLX5_ST_SZ_BYTES(modify_nic_vport_context_in)];
 u8 *ctx = MLX5_ADDR_OF(modify_nic_vport_context_in, in,
          nic_vport_context);

 memset(in, 0, MLX5_ST_SZ_BYTES(modify_nic_vport_context_in));

 MLX5_SET(modify_nic_vport_context_in, in, vport_number, vport);
 if (vport)
  MLX5_SET(modify_nic_vport_context_in, in,
    other_vport, 1);
 MLX5_SET(modify_nic_vport_context_in, in, field_select.promisc, 1);
 if (promisc_mc)
  MLX5_SET(nic_vport_context, ctx, promisc_mc, 1);
 if (promisc_uc)
  MLX5_SET(nic_vport_context, ctx, promisc_uc, 1);
 if (promisc_all)
  MLX5_SET(nic_vport_context, ctx, promisc_all, 1);

 return mlx5_modify_nic_vport_context(mdev, in, sizeof(in));
}

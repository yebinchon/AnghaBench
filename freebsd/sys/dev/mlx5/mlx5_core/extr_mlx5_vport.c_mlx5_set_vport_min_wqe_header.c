
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int min_wqe_inline_mode; } ;
struct TYPE_3__ {int min_wqe_inline_mode; } ;


 int ENOMEM ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 TYPE_2__ field_select ;
 int kvfree (int *) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,int *,int ) ;
 int * mlx5_vzalloc (int ) ;
 int modify_nic_vport_context_in ;
 TYPE_1__ nic_vport_context ;
 int other_vport ;
 int vport_number ;

int mlx5_set_vport_min_wqe_header(struct mlx5_core_dev *mdev,
      u8 vport, int min_header)
{
 u32 *in;
 u32 inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 int err;

 in = mlx5_vzalloc(inlen);
 if (!in)
  return -ENOMEM;

 MLX5_SET(modify_nic_vport_context_in, in,
   field_select.min_wqe_inline_mode, 1);
 MLX5_SET(modify_nic_vport_context_in, in,
   nic_vport_context.min_wqe_inline_mode, min_header);
 MLX5_SET(modify_nic_vport_context_in, in, vport_number, vport);
 MLX5_SET(modify_nic_vport_context_in, in, other_vport, 1);

 err = mlx5_modify_nic_vport_context(mdev, in, inlen);

 kvfree(in);
 return err;
}

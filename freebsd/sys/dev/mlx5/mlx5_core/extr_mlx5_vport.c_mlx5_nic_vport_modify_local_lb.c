
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_local_lb_selection { ____Placeholder_mlx5_local_lb_selection } mlx5_local_lb_selection ;
struct TYPE_4__ {int disable_uc_local_lb; int disable_mc_local_lb; } ;
struct TYPE_3__ {int disable_uc_local_lb; int disable_mc_local_lb; } ;


 int ENOMEM ;
 int MLX5_LOCAL_MC_LB ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 TYPE_2__ field_select ;
 int kvfree (void*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_modify_nic_vport_context (struct mlx5_core_dev*,void*,int) ;
 void* mlx5_vzalloc (int) ;
 int modify_nic_vport_context_in ;
 TYPE_1__ nic_vport_context ;
 int vport_number ;

int mlx5_nic_vport_modify_local_lb(struct mlx5_core_dev *mdev,
       enum mlx5_local_lb_selection selection,
       u8 value)
{
 void *in;
 int inlen = MLX5_ST_SZ_BYTES(modify_nic_vport_context_in);
 int err;

 in = mlx5_vzalloc(inlen);
 if (!in) {
  mlx5_core_warn(mdev, "failed to allocate inbox\n");
  return -ENOMEM;
 }

 MLX5_SET(modify_nic_vport_context_in, in, vport_number, 0);

 if (selection == MLX5_LOCAL_MC_LB) {
  MLX5_SET(modify_nic_vport_context_in, in,
    field_select.disable_mc_local_lb, 1);
  MLX5_SET(modify_nic_vport_context_in, in,
    nic_vport_context.disable_mc_local_lb,
    value);
 } else {
  MLX5_SET(modify_nic_vport_context_in, in,
    field_select.disable_uc_local_lb, 1);
  MLX5_SET(modify_nic_vport_context_in, in,
    nic_vport_context.disable_uc_local_lb,
    value);
 }

 err = mlx5_modify_nic_vport_context(mdev, in, inlen);

 kvfree(in);
 return err;
}

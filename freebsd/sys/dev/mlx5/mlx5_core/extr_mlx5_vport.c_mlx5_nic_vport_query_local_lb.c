
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_local_lb_selection { ____Placeholder_mlx5_local_lb_selection } mlx5_local_lb_selection ;
struct TYPE_2__ {int disable_uc_local_lb; int disable_mc_local_lb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_GET (int ,void*,int ) ;
 int MLX5_LOCAL_MC_LB ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,void*,int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_nic_vport_query_local_lb(struct mlx5_core_dev *mdev,
      enum mlx5_local_lb_selection selection,
      u8 *value)
{
 void *out;
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);
 int err;

 out = kzalloc(outlen, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 err = mlx5_query_nic_vport_context(mdev, 0, out, outlen);
 if (err)
  goto done;

 if (selection == MLX5_LOCAL_MC_LB)
  *value = MLX5_GET(query_nic_vport_context_out, out,
      nic_vport_context.disable_mc_local_lb);
 else
  *value = MLX5_GET(query_nic_vport_context_out, out,
      nic_vport_context.disable_uc_local_lb);

done:
 kfree(out);
 return err;
}

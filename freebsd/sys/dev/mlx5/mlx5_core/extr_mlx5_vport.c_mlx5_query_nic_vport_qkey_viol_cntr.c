
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int qkey_violation_counter; } ;


 int ENOMEM ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (int *) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int) ;
 int * mlx5_vzalloc (int) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

int mlx5_query_nic_vport_qkey_viol_cntr(struct mlx5_core_dev *mdev,
     u16 *qkey_viol_cntr)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);
 int err;

 out = mlx5_vzalloc(outlen);
 if (!out)
  return -ENOMEM;

 err = mlx5_query_nic_vport_context(mdev, 0, out, outlen);
 if (err)
  goto out;

 *qkey_viol_cntr = MLX5_GET(query_nic_vport_context_out, out,
    nic_vport_context.qkey_violation_counter);

out:
 kvfree(out);
 return err;
}

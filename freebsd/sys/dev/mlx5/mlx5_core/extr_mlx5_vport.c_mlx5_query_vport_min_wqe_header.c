
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int min_wqe_inline_mode; } ;


 int ENOMEM ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kvfree (int *) ;
 int mlx5_query_nic_vport_context (struct mlx5_core_dev*,int ,int *,int ) ;
 int * mlx5_vzalloc (int ) ;
 TYPE_1__ nic_vport_context ;
 int query_nic_vport_context_out ;

__attribute__((used)) static int mlx5_query_vport_min_wqe_header(struct mlx5_core_dev *mdev,
        int *min_header)
{
 u32 *out;
 u32 outlen = MLX5_ST_SZ_BYTES(query_nic_vport_context_out);
 int err;

 out = mlx5_vzalloc(outlen);
 if (!out)
  return -ENOMEM;

 err = mlx5_query_nic_vport_context(mdev, 0, out, outlen);
 if (err)
  goto out;

 *min_header = MLX5_GET(query_nic_vport_context_out, out,
          nic_vport_context.min_wqe_inline_mode);

out:
 kvfree(out);
 return err;
}

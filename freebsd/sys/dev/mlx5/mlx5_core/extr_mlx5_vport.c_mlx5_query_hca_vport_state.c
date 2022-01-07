
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int vport_state; } ;


 int ENOMEM ;
 int MLX5_GET (int ,int *,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 TYPE_1__ hca_vport_context ;
 int kvfree (int *) ;
 int mlx5_query_hca_vport_context (struct mlx5_core_dev*,int,int ,int *,int) ;
 int * mlx5_vzalloc (int) ;
 int query_hca_vport_context_out ;

int mlx5_query_hca_vport_state(struct mlx5_core_dev *dev, u8 *vport_state)
{
 u32 *out;
 int outlen = MLX5_ST_SZ_BYTES(query_hca_vport_context_out);
 int err;

 out = mlx5_vzalloc(outlen);
 if (!out)
  return -ENOMEM;

 err = mlx5_query_hca_vport_context(dev, 1, 0, out, outlen);
 if (err)
  goto out;

 *vport_state = MLX5_GET(query_hca_vport_context_out, out,
    hca_vport_context.vport_state);

out:
 kvfree(out);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_srq_attr {int flags; } ;
struct mlx5_core_srq {int srqn; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 scalar_t__ MLX5_GET (void*,void*,int ) ;
 int MLX5_SRQ_FLAG_ERR ;
 int MLX5_ST_SZ_BYTES (int ) ;
 scalar_t__ MLX5_XRC_SRQC_STATE_GOOD ;
 int get_srqc (void*,struct mlx5_srq_attr*) ;
 int kvfree (int *) ;
 int mlx5_core_query_xsrq (struct mlx5_core_dev*,int ,int *) ;
 int * mlx5_vzalloc (int ) ;
 int query_xrc_srq_out ;
 int state ;
 int xrc_srq_context_entry ;

__attribute__((used)) static int query_xrc_srq_cmd(struct mlx5_core_dev *dev,
        struct mlx5_core_srq *srq,
        struct mlx5_srq_attr *out)
{
 u32 *xrcsrq_out;
 void *xrc_srqc;
 int err;

 xrcsrq_out = mlx5_vzalloc(MLX5_ST_SZ_BYTES(query_xrc_srq_out));
 if (!xrcsrq_out)
  return -ENOMEM;

 err = mlx5_core_query_xsrq(dev, srq->srqn, xrcsrq_out);
 if (err)
  goto out;

 xrc_srqc = MLX5_ADDR_OF(query_xrc_srq_out, xrcsrq_out,
    xrc_srq_context_entry);
 get_srqc(xrc_srqc, out);
 if (MLX5_GET(xrc_srqc, xrc_srqc, state) != MLX5_XRC_SRQC_STATE_GOOD)
  out->flags |= MLX5_SRQ_FLAG_ERR;

out:
 kvfree(xrcsrq_out);
 return err;
}

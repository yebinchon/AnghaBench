
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u32 ;
struct mlx5_srq_attr {int flags; } ;
struct mlx5_core_srq {int srqn; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 scalar_t__ MLX5_GET (void*,void*,int ) ;
 scalar_t__ MLX5_RMPC_STATE_RDY ;
 int MLX5_SRQ_FLAG_ERR ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int get_wq (void*,struct mlx5_srq_attr*) ;
 int kvfree (void*) ;
 int mlx5_core_query_rmp (struct mlx5_core_dev*,int ,void*) ;
 void* mlx5_vzalloc (int ) ;
 void* query_rmp_out ;
 int rmp_context ;
 int state ;
 int wq ;

__attribute__((used)) static int query_rmp_cmd(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq,
    struct mlx5_srq_attr *out)
{
 u32 *rmp_out;
 void *rmpc;
 int err;

 rmp_out = mlx5_vzalloc(MLX5_ST_SZ_BYTES(query_rmp_out));
 if (!rmp_out)
  return -ENOMEM;

 err = mlx5_core_query_rmp(dev, srq->srqn, rmp_out);
 if (err)
  goto out;

 rmpc = MLX5_ADDR_OF(query_rmp_out, rmp_out, rmp_context);
 get_wq(MLX5_ADDR_OF(rmpc, rmpc, wq), out);
 if (MLX5_GET(rmpc, rmpc, state) != MLX5_RMPC_STATE_RDY)
  out->flags |= MLX5_SRQ_FLAG_ERR;

out:
 kvfree(rmp_out);
 return 0;
}

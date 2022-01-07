
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_qp {int qpn; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_RES_RQ ;
 int create_qprqsq_common (struct mlx5_core_dev*,struct mlx5_core_qp*,int ) ;
 int mlx5_core_create_rq (struct mlx5_core_dev*,int *,int,int *) ;
 int mlx5_core_destroy_rq (struct mlx5_core_dev*,int ) ;

int mlx5_core_create_rq_tracked(struct mlx5_core_dev *dev, u32 *in, int inlen,
    struct mlx5_core_qp *rq)
{
 int err;

 err = mlx5_core_create_rq(dev, in, inlen, &rq->qpn);
 if (err)
  return err;

 err = create_qprqsq_common(dev, rq, MLX5_RES_RQ);
 if (err)
  mlx5_core_destroy_rq(dev, rq->qpn);

 return err;
}

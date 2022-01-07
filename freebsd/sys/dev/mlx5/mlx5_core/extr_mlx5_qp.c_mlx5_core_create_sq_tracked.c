
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_qp {int qpn; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_RES_SQ ;
 int create_qprqsq_common (struct mlx5_core_dev*,struct mlx5_core_qp*,int ) ;
 int mlx5_core_create_sq (struct mlx5_core_dev*,int *,int,int *) ;
 int mlx5_core_destroy_sq (struct mlx5_core_dev*,int ) ;

int mlx5_core_create_sq_tracked(struct mlx5_core_dev *dev, u32 *in, int inlen,
    struct mlx5_core_qp *sq)
{
 int err;

 err = mlx5_core_create_sq(dev, in, inlen, &sq->qpn);
 if (err)
  return err;

 err = create_qprqsq_common(dev, sq, MLX5_RES_SQ);
 if (err)
  mlx5_core_destroy_sq(dev, sq->qpn);

 return err;
}

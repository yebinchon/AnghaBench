
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_qp {int qpn; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_RES_SQ ;
 int destroy_qprqsq_common (struct mlx5_core_dev*,struct mlx5_core_qp*,int ) ;
 int mlx5_core_destroy_sq (struct mlx5_core_dev*,int ) ;

void mlx5_core_destroy_sq_tracked(struct mlx5_core_dev *dev,
      struct mlx5_core_qp *sq)
{
 destroy_qprqsq_common(dev, sq, MLX5_RES_SQ);
 mlx5_core_destroy_sq(dev, sq->qpn);
}

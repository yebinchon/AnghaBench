
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ res; } ;
struct mlx5_core_srq {TYPE_1__ common; } ;
struct mlx5_core_dev {int issi; } ;


 scalar_t__ MLX5_RES_XSRQ ;
 int destroy_rmp_cmd (struct mlx5_core_dev*,struct mlx5_core_srq*) ;
 int destroy_srq_cmd (struct mlx5_core_dev*,struct mlx5_core_srq*) ;
 int destroy_xrc_srq_cmd (struct mlx5_core_dev*,struct mlx5_core_srq*) ;

__attribute__((used)) static int destroy_srq_split(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq)
{
 if (!dev->issi)
  return destroy_srq_cmd(dev, srq);
 else if (srq->common.res == MLX5_RES_XSRQ)
  return destroy_xrc_srq_cmd(dev, srq);
 else
  return destroy_rmp_cmd(dev, srq);
}

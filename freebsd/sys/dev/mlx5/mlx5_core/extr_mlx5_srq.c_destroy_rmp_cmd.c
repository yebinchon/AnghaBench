
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_srq {int srqn; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_destroy_rmp (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static int destroy_rmp_cmd(struct mlx5_core_dev *dev,
       struct mlx5_core_srq *srq)
{
 return mlx5_core_destroy_rmp(dev, srq->srqn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_core_srq {int srqn; } ;
struct mlx5_core_dev {int dummy; } ;


 int mlx5_core_arm_rmp (struct mlx5_core_dev*,int ,int ) ;

__attribute__((used)) static int arm_rmp_cmd(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq, u16 lwm)
{
 return mlx5_core_arm_rmp(dev, srq->srqn, lwm);
}

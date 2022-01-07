
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ res; } ;
struct mlx5_core_srq {TYPE_1__ common; } ;
struct mlx5_core_dev {int issi; } ;


 scalar_t__ MLX5_RES_XSRQ ;
 int arm_rmp_cmd (struct mlx5_core_dev*,struct mlx5_core_srq*,int ) ;
 int arm_srq_cmd (struct mlx5_core_dev*,struct mlx5_core_srq*,int ,int) ;
 int arm_xrc_srq_cmd (struct mlx5_core_dev*,struct mlx5_core_srq*,int ) ;

int mlx5_core_arm_srq(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq,
        u16 lwm, int is_srq)
{
 if (!dev->issi)
  return arm_srq_cmd(dev, srq, lwm, is_srq);
 else if (srq->common.res == MLX5_RES_XSRQ)
  return arm_xrc_srq_cmd(dev, srq, lwm);
 else
  return arm_rmp_cmd(dev, srq, lwm);
}

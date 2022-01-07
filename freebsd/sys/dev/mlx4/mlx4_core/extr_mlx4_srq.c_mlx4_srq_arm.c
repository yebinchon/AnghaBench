
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_srq {int srqn; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_ARM_SRQ (struct mlx4_dev*,int ,int) ;

int mlx4_srq_arm(struct mlx4_dev *dev, struct mlx4_srq *srq, int limit_watermark)
{
 return mlx4_ARM_SRQ(dev, srq->srqn, limit_watermark);
}

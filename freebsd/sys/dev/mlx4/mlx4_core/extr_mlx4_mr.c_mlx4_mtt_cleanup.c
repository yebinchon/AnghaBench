
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mtt {scalar_t__ order; int offset; } ;
struct mlx4_dev {int dummy; } ;


 int mlx4_free_mtt_range (struct mlx4_dev*,int ,scalar_t__) ;

void mlx4_mtt_cleanup(struct mlx4_dev *dev, struct mlx4_mtt *mtt)
{
 if (mtt->order < 0)
  return;

 mlx4_free_mtt_range(dev, mtt->offset, mtt->order);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int spinlock; int bitmap; } ;
struct mlx5_core_dev {TYPE_1__ mpfs; } ;


 int MLX5_MPFS_TABLE_MAX ;
 scalar_t__ bitmap_weight (int ,int ) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,scalar_t__) ;
 int spin_lock_destroy (int *) ;

void
mlx5_mpfs_destroy(struct mlx5_core_dev *dev)
{
 u32 num;

 num = bitmap_weight(dev->mpfs.bitmap, MLX5_MPFS_TABLE_MAX);
 if (num != 0)
  mlx5_core_err(dev, "Leaking %u MPFS MAC table entries\n", num);

 spin_lock_destroy(&dev->mpfs.spinlock);
}

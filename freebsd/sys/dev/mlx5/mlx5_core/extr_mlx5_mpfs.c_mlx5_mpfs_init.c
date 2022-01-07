
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitmap; int spinlock; } ;
struct mlx5_core_dev {TYPE_1__ mpfs; } ;


 int MLX5_MPFS_TABLE_MAX ;
 int bitmap_zero (int ,int ) ;
 int spin_lock_init (int *) ;

int
mlx5_mpfs_init(struct mlx5_core_dev *dev)
{

 spin_lock_init(&dev->mpfs.spinlock);
 bitmap_zero(dev->mpfs.bitmap, MLX5_MPFS_TABLE_MAX);
 return (0);
}

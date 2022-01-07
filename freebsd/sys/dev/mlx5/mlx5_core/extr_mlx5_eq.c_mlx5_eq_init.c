
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct TYPE_4__ {TYPE_1__ eq_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;


 int spin_lock_init (int *) ;

int mlx5_eq_init(struct mlx5_core_dev *dev)
{
 int err;

 spin_lock_init(&dev->priv.eq_table.lock);

 err = 0;

 return err;
}

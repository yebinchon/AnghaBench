
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {int wq_lock; int work; int wq; int flags; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 int MLX5_DROP_NEW_HEALTH_WORK ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

void mlx5_trigger_health_work(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;
 unsigned long flags;

 spin_lock_irqsave(&health->wq_lock, flags);
 if (!test_bit(MLX5_DROP_NEW_HEALTH_WORK, &health->flags))
  queue_work(health->wq, &health->work);
 else
  mlx5_core_err(dev,
   "new health works are not permitted at this stage\n");
 spin_unlock_irqrestore(&health->wq_lock, flags);
}

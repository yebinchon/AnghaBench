
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_health {int timer; int * health_counter; int * health; int flags; int fatal_error; } ;
struct TYPE_3__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_2__* iseg; TYPE_1__ priv; } ;
struct TYPE_4__ {int health_counter; int health; } ;


 int MLX5_DROP_NEW_HEALTH_WORK ;
 int MLX5_DROP_NEW_RECOVERY_WORK ;
 int MLX5_DROP_NEW_WATCHDOG_WORK ;
 scalar_t__ MLX5_HEALTH_POLL_INTERVAL ;
 int MLX5_SENSOR_NO_ERR ;
 int clear_bit (int ,int *) ;
 int init_timer (int *) ;
 scalar_t__ jiffies ;
 int mlx5_trigger_health_watchdog (struct mlx5_core_dev*) ;
 int mod_timer (int *,int ) ;
 int poll_health ;
 int round_jiffies (scalar_t__) ;
 int setup_timer (int *,int ,unsigned long) ;

void mlx5_start_health_poll(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;

 init_timer(&health->timer);
 health->fatal_error = MLX5_SENSOR_NO_ERR;
 clear_bit(MLX5_DROP_NEW_HEALTH_WORK, &health->flags);
 clear_bit(MLX5_DROP_NEW_RECOVERY_WORK, &health->flags);
 clear_bit(MLX5_DROP_NEW_WATCHDOG_WORK, &health->flags);
 health->health = &dev->iseg->health;
 health->health_counter = &dev->iseg->health_counter;

 setup_timer(&health->timer, poll_health, (unsigned long)dev);
 mod_timer(&health->timer,
    round_jiffies(jiffies + MLX5_HEALTH_POLL_INTERVAL));


 mlx5_trigger_health_watchdog(dev);
}

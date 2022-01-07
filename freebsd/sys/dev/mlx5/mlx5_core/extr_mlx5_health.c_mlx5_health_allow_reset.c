
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_health {int last_reset_req; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 unsigned int hz ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 unsigned int sw_reset_to ;
 unsigned int ticks ;

__attribute__((used)) static bool
mlx5_health_allow_reset(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health = &dev->priv.health;
 unsigned int delta;
 bool ret;

 if (health->last_reset_req != 0) {
  delta = ticks - health->last_reset_req;
  delta /= hz;
  ret = delta >= sw_reset_to;
 } else {
  ret = 1;
 }





 health->last_reset_req = ticks ? : -1;
 if (!ret)
  mlx5_core_warn(dev,
      "Firmware reset elided due to auto-reset frequency threshold.\n");
 return (ret);
}

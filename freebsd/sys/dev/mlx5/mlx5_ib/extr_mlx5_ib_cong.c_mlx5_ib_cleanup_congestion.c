
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int ctx; int dwork; } ;
struct mlx5_ib_dev {TYPE_1__ congestion; } ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int sx_destroy (int *) ;
 int sysctl_ctx_free (int *) ;

void
mlx5_ib_cleanup_congestion(struct mlx5_ib_dev *dev)
{

 while (cancel_delayed_work_sync(&dev->congestion.dwork))
  ;
 sysctl_ctx_free(&dev->congestion.ctx);
 sx_destroy(&dev->congestion.lock);
}

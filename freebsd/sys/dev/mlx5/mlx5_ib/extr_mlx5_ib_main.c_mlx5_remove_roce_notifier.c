
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * notifier_call; } ;
struct TYPE_3__ {TYPE_2__ nb; } ;
struct mlx5_ib_dev {TYPE_1__ roce; } ;


 int unregister_netdevice_notifier (TYPE_2__*) ;

__attribute__((used)) static void mlx5_remove_roce_notifier(struct mlx5_ib_dev *dev)
{
 if (dev->roce.nb.notifier_call) {
  unregister_netdevice_notifier(&dev->roce.nb);
  dev->roce.nb.notifier_call = ((void*)0);
 }
}

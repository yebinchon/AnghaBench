
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_core_health {void* wq; void* wq_watchdog; int recover_work; int work_cmd_completion; int work_watchdog; int work; int wq_lock; void* wq_cmd; } ;
struct TYPE_3__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_2__* pdev; TYPE_1__ priv; } ;
typedef int name ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 void* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (void*) ;
 char* dev_name (int *) ;
 int health_care ;
 int health_recover ;
 int health_watchdog ;
 int mlx5_trigger_cmd_completions ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_init (int *) ;

int mlx5_health_init(struct mlx5_core_dev *dev)
{
 struct mlx5_core_health *health;
 char name[64];

 health = &dev->priv.health;

 snprintf(name, sizeof(name), "%s-rec", dev_name(&dev->pdev->dev));
 health->wq = create_singlethread_workqueue(name);
 if (!health->wq)
  goto err_recovery;

 snprintf(name, sizeof(name), "%s-wdg", dev_name(&dev->pdev->dev));
 health->wq_watchdog = create_singlethread_workqueue(name);
 if (!health->wq_watchdog)
  goto err_watchdog;

 snprintf(name, sizeof(name), "%s-cmd", dev_name(&dev->pdev->dev));
 health->wq_cmd = create_singlethread_workqueue(name);
 if (!health->wq_cmd)
  goto err_cmd;

 spin_lock_init(&health->wq_lock);
 INIT_WORK(&health->work, health_care);
 INIT_WORK(&health->work_watchdog, health_watchdog);
 INIT_WORK(&health->work_cmd_completion, mlx5_trigger_cmd_completions);
 INIT_DELAYED_WORK(&health->recover_work, health_recover);

 return 0;

err_cmd:
 destroy_workqueue(health->wq_watchdog);
err_watchdog:
 destroy_workqueue(health->wq);
err_recovery:
 return -ENOMEM;
}

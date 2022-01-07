
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {int catas_wq; int catas_work; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int catas_reset ;
 int create_singlethread_workqueue (char*) ;

int mlx4_catas_init(struct mlx4_dev *dev)
{
 INIT_WORK(&dev->persist->catas_work, catas_reset);
 dev->persist->catas_wq = create_singlethread_workqueue("mlx4_health");
 if (!dev->persist->catas_wq)
  return -ENOMEM;

 return 0;
}

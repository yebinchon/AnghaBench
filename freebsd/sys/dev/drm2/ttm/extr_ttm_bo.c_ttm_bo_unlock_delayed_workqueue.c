
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_device {int wq; } ;


 int hz ;
 int taskqueue_enqueue_timeout (int ,int *,int) ;
 int taskqueue_thread ;

void ttm_bo_unlock_delayed_workqueue(struct ttm_bo_device *bdev, int resched)
{
 if (resched) {
  taskqueue_enqueue_timeout(taskqueue_thread, &bdev->wq,
      ((hz / 100) < 1) ? 1 : hz / 100);
 }
}

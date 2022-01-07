
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_device {int wq; } ;


 scalar_t__ taskqueue_cancel_timeout (int ,int *,int*) ;
 int taskqueue_drain_timeout (int ,int *) ;
 int taskqueue_thread ;

int ttm_bo_lock_delayed_workqueue(struct ttm_bo_device *bdev)
{
 int pending;

 if (taskqueue_cancel_timeout(taskqueue_thread, &bdev->wq, &pending))
  taskqueue_drain_timeout(taskqueue_thread, &bdev->wq);
 return (pending);
}

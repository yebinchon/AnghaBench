
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_sriov {int id_map_lock; int going_down_lock; int is_going_down; } ;
struct id_map_entry {int scheduled_delete; int timeout; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct mlx4_ib_sriov sriov; } ;


 int CM_CLEANUP_CACHE_TIMEOUT ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* to_mdev (struct ib_device*) ;

__attribute__((used)) static void schedule_delayed(struct ib_device *ibdev, struct id_map_entry *id)
{
 struct mlx4_ib_sriov *sriov = &to_mdev(ibdev)->sriov;
 unsigned long flags;

 spin_lock(&sriov->id_map_lock);
 spin_lock_irqsave(&sriov->going_down_lock, flags);

 if (!sriov->is_going_down) {
  id->scheduled_delete = 1;
  schedule_delayed_work(&id->timeout, CM_CLEANUP_CACHE_TIMEOUT);
 }
 spin_unlock_irqrestore(&sriov->going_down_lock, flags);
 spin_unlock(&sriov->id_map_lock);
}

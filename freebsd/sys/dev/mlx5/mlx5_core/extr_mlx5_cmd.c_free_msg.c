
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct mlx5_cmd_msg {TYPE_1__* cache; int list; } ;
struct TYPE_2__ {int lock; int head; } ;


 int list_add_tail (int *,int *) ;
 int mlx5_free_cmd_msg (struct mlx5_core_dev*,struct mlx5_cmd_msg*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_msg(struct mlx5_core_dev *dev, struct mlx5_cmd_msg *msg)
{
 unsigned long flags;

 if (msg->cache) {
  spin_lock_irqsave(&msg->cache->lock, flags);
  list_add_tail(&msg->list, &msg->cache->head);
  spin_unlock_irqrestore(&msg->cache->lock, flags);
 } else {
  mlx5_free_cmd_msg(dev, msg);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int head; int lock; } ;
struct TYPE_4__ {TYPE_1__ med; TYPE_1__ large; } ;
struct mlx5_cmd {TYPE_2__ cache; } ;
struct mlx5_core_dev {struct mlx5_cmd cmd; } ;
struct mlx5_cmd_msg {int list; TYPE_1__* cache; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct mlx5_cmd_msg*) ;
 int LONG_LIST_SIZE ;
 int MED_LIST_SIZE ;
 int NUM_LONG_LISTS ;
 int NUM_MED_LISTS ;
 int PTR_ERR (struct mlx5_cmd_msg*) ;
 int destroy_msg_cache (struct mlx5_core_dev*) ;
 int list_add_tail (int *,int *) ;
 struct mlx5_cmd_msg* mlx5_alloc_cmd_msg (struct mlx5_core_dev*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int create_msg_cache(struct mlx5_core_dev *dev)
{
 struct mlx5_cmd *cmd = &dev->cmd;
 struct mlx5_cmd_msg *msg;
 int err;
 int i;

 spin_lock_init(&cmd->cache.large.lock);
 INIT_LIST_HEAD(&cmd->cache.large.head);
 spin_lock_init(&cmd->cache.med.lock);
 INIT_LIST_HEAD(&cmd->cache.med.head);

 for (i = 0; i < NUM_LONG_LISTS; i++) {
  msg = mlx5_alloc_cmd_msg(dev, GFP_KERNEL, LONG_LIST_SIZE);
  if (IS_ERR(msg)) {
   err = PTR_ERR(msg);
   goto ex_err;
  }
  msg->cache = &cmd->cache.large;
  list_add_tail(&msg->list, &cmd->cache.large.head);
 }

 for (i = 0; i < NUM_MED_LISTS; i++) {
  msg = mlx5_alloc_cmd_msg(dev, GFP_KERNEL, MED_LIST_SIZE);
  if (IS_ERR(msg)) {
   err = PTR_ERR(msg);
   goto ex_err;
  }
  msg->cache = &cmd->cache.med;
  list_add_tail(&msg->list, &cmd->cache.med.head);
 }

 return 0;

ex_err:
 destroy_msg_cache(dev);
 return err;
}

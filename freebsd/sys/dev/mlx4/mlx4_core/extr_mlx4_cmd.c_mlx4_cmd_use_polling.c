
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ use_events; int max_cmds; int switch_sem; int poll_sem; int * context; int event_sem; } ;
struct mlx4_priv {TYPE_1__ cmd; } ;
struct mlx4_dev {int dummy; } ;


 int down (int *) ;
 int down_write (int *) ;
 int kfree (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int up (int *) ;
 int up_write (int *) ;

void mlx4_cmd_use_polling(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 int i;

 if (priv->cmd.use_events == 0)
  return;

 down_write(&priv->cmd.switch_sem);
 priv->cmd.use_events = 0;

 for (i = 0; i < priv->cmd.max_cmds; ++i)
  down(&priv->cmd.event_sem);

 kfree(priv->cmd.context);
 priv->cmd.context = ((void*)0);

 up(&priv->cmd.poll_sem);
 up_write(&priv->cmd.switch_sem);
}

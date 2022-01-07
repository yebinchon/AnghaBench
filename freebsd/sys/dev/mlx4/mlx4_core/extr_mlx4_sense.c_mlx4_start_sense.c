
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_sense {int sense_poll; scalar_t__ gone; } ;
struct mlx4_priv {int port_mutex; struct mlx4_sense sense; } ;
struct TYPE_2__ {int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_DEV_CAP_FLAG_DPDP ;
 int MLX4_SENSE_RANGE ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_wq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int round_jiffies_relative (int ) ;

void mlx4_start_sense(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_sense *sense = &priv->sense;

 if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_DPDP))
  return;

 mutex_lock(&priv->port_mutex);
 sense->gone = 0;
 queue_delayed_work(mlx4_wq , &sense->sense_poll,
      round_jiffies_relative(MLX4_SENSE_RANGE));
 mutex_unlock(&priv->port_mutex);
}

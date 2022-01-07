
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_sense {int gone; int sense_poll; } ;
struct mlx4_priv {struct mlx4_sense sense; int port_mutex; } ;
struct mlx4_dev {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx4_stop_sense(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_sense *sense = &priv->sense;

 mutex_lock(&priv->port_mutex);
 sense->gone = 1;
 mutex_unlock(&priv->port_mutex);

 cancel_delayed_work_sync(&mlx4_priv(dev)->sense.sense_poll);
}

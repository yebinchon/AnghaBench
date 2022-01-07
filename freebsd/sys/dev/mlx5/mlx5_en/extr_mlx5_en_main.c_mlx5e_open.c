
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5e_priv {TYPE_1__* ifp; int mdev; } ;
struct TYPE_3__ {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int MLX5_PORT_UP ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int mlx5_en_err (TYPE_1__*,char*) ;
 scalar_t__ mlx5_set_port_status (int ,int ) ;
 int mlx5e_open_locked (TYPE_1__*) ;

__attribute__((used)) static void
mlx5e_open(void *arg)
{
 struct mlx5e_priv *priv = arg;

 PRIV_LOCK(priv);
 if (mlx5_set_port_status(priv->mdev, MLX5_PORT_UP))
  mlx5_en_err(priv->ifp,
      "Setting port status to up failed\n");

 mlx5e_open_locked(priv->ifp);
 priv->ifp->if_drv_flags |= IFF_DRV_RUNNING;
 PRIV_UNLOCK(priv);
}

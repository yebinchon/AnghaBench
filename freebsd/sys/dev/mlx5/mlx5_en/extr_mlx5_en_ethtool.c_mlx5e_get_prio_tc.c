
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prio_tc; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 int MLX5E_MAX_PRIORITY ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int ets ;
 int mlx5_query_port_prio_tc (struct mlx5_core_dev*,int,scalar_t__) ;

__attribute__((used)) static int
mlx5e_get_prio_tc(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 int err = 0;
 int i;

 PRIV_LOCK(priv);
 if (!MLX5_CAP_GEN(priv->mdev, ets)) {
  PRIV_UNLOCK(priv);
  return (EOPNOTSUPP);
 }

 for (i = 0; i != MLX5E_MAX_PRIORITY; i++) {
  err = -mlx5_query_port_prio_tc(mdev, i, priv->params_ethtool.prio_tc + i);
  if (err)
   break;
 }
 PRIV_UNLOCK(priv);
 return (err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* max_bw_value; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLX5E_100MB ;
 int MLX5E_1GB ;



 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int WARN_ONCE (int,char*) ;
 int mlx5_max_tc (struct mlx5_core_dev*) ;
 int mlx5_query_port_tc_rate_limit (struct mlx5_core_dev*,int*,int*) ;

__attribute__((used)) static int
mlx5e_getmaxrate(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 u8 max_bw_unit[IEEE_8021QAZ_MAX_TCS];
 u8 max_bw_value[IEEE_8021QAZ_MAX_TCS];
 int err;
 int i;

 PRIV_LOCK(priv);
 err = -mlx5_query_port_tc_rate_limit(mdev, max_bw_value, max_bw_unit);
 if (err)
  goto done;

 for (i = 0; i <= mlx5_max_tc(mdev); i++) {
  switch (max_bw_unit[i]) {
  case 130:
   priv->params_ethtool.max_bw_value[i] = max_bw_value[i] * MLX5E_100MB;
   break;
  case 128:
   priv->params_ethtool.max_bw_value[i] = max_bw_value[i] * MLX5E_1GB;
   break;
  case 129:
   priv->params_ethtool.max_bw_value[i] = 0;
   break;
  default:
   priv->params_ethtool.max_bw_value[i] = -1;
   WARN_ONCE(1, "non-supported BW unit");
   break;
  }
 }
done:
 PRIV_UNLOCK(priv);
 return (err);
}

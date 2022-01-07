
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int tx_queue_size; int tx_completion_fact_max; int tx_completion_fact; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; } ;


 int MLX5_SEND_WQE_MAX_WQEBBS ;

__attribute__((used)) static void
mlx5e_ethtool_sync_tx_completion_fact(struct mlx5e_priv *priv)
{
 uint64_t max = priv->params_ethtool.tx_queue_size /
     (2 * MLX5_SEND_WQE_MAX_WQEBBS);






 if (max < 1)
  max = 1;
 else if (max > 65535)
  max = 65535;
 priv->params_ethtool.tx_completion_fact_max = max;





 if (priv->params_ethtool.tx_completion_fact < 1)
  priv->params_ethtool.tx_completion_fact = 1;
 else if (priv->params_ethtool.tx_completion_fact > max)
  priv->params_ethtool.tx_completion_fact = max;
}

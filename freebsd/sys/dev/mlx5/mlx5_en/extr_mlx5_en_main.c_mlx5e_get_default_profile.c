
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_dim_cq_moder {scalar_t__ pkts; } ;
struct TYPE_2__ {scalar_t__ hw_lro_en; } ;
struct mlx5e_priv {TYPE_1__ params; } ;


 int MLX5E_DIM_DEFAULT_PROFILE ;
 scalar_t__ MLX5E_DIM_MAX_RX_CQ_MODERATION_PKTS_WITH_LRO ;
 struct net_dim_cq_moder net_dim_get_profile (int,int ) ;

__attribute__((used)) static void
mlx5e_get_default_profile(struct mlx5e_priv *priv, int mode, struct net_dim_cq_moder *ptr)
{

 *ptr = net_dim_get_profile(mode, MLX5E_DIM_DEFAULT_PROFILE);


 if (priv->params.hw_lro_en &&
     ptr->pkts > MLX5E_DIM_MAX_RX_CQ_MODERATION_PKTS_WITH_LRO) {
  ptr->pkts = MLX5E_DIM_MAX_RX_CQ_MODERATION_PKTS_WITH_LRO;
 }
}

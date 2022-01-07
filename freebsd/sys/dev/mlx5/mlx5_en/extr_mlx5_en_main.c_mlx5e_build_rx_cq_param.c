
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_dim_cq_moder {int usec; int pkts; } ;
struct TYPE_2__ {int log_rq_size; int rx_cq_moderation_mode; int rx_cq_moderation_usec; int rx_cq_moderation_pkts; scalar_t__ cqe_zipping_en; } ;
struct mlx5e_priv {int mdev; TYPE_1__ params; } ;
struct mlx5e_cq_param {void* cqc; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_CQE_FORMAT_HASH ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_EQE ;
 int MLX5_SET (void*,void*,int ,int) ;
 int NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE ;
 int NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 int cq_max_count ;
 int cq_period ;
 int cq_period_mode ;
 int cq_period_start_from_cqe ;
 int cqe_compression_en ;
 int log_cq_size ;
 int mini_cqe_res_format ;
 int mlx5e_build_common_cq_param (struct mlx5e_priv*,struct mlx5e_cq_param*) ;
 int mlx5e_dim_build_cq_param (struct mlx5e_priv*,struct mlx5e_cq_param*) ;
 int mlx5e_get_default_profile (struct mlx5e_priv*,int ,struct net_dim_cq_moder*) ;

__attribute__((used)) static void
mlx5e_build_rx_cq_param(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param)
{
 struct net_dim_cq_moder curr;
 void *cqc = param->cqc;
 if (priv->params.cqe_zipping_en) {
  MLX5_SET(cqc, cqc, mini_cqe_res_format, MLX5_CQE_FORMAT_HASH);
  MLX5_SET(cqc, cqc, cqe_compression_en, 1);
 }

 MLX5_SET(cqc, cqc, log_cq_size, priv->params.log_rq_size);

 switch (priv->params.rx_cq_moderation_mode) {
 case 0:
  MLX5_SET(cqc, cqc, cq_period, priv->params.rx_cq_moderation_usec);
  MLX5_SET(cqc, cqc, cq_max_count, priv->params.rx_cq_moderation_pkts);
  MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
  break;
 case 1:
  MLX5_SET(cqc, cqc, cq_period, priv->params.rx_cq_moderation_usec);
  MLX5_SET(cqc, cqc, cq_max_count, priv->params.rx_cq_moderation_pkts);
  if (MLX5_CAP_GEN(priv->mdev, cq_period_start_from_cqe))
   MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_CQE);
  else
   MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
  break;
 case 2:
  mlx5e_get_default_profile(priv, NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE, &curr);
  MLX5_SET(cqc, cqc, cq_period, curr.usec);
  MLX5_SET(cqc, cqc, cq_max_count, curr.pkts);
  MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
  break;
 case 3:
  mlx5e_get_default_profile(priv, NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE, &curr);
  MLX5_SET(cqc, cqc, cq_period, curr.usec);
  MLX5_SET(cqc, cqc, cq_max_count, curr.pkts);
  if (MLX5_CAP_GEN(priv->mdev, cq_period_start_from_cqe))
   MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_CQE);
  else
   MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
  break;
 default:
  break;
 }

 mlx5e_dim_build_cq_param(priv, param);

 mlx5e_build_common_cq_param(priv, param);
}

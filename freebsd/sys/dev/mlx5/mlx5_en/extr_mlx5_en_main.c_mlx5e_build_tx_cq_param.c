
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_cq_moderation_mode; int tx_cq_moderation_pkts; int tx_cq_moderation_usec; int log_sq_size; } ;
struct mlx5e_priv {int mdev; TYPE_1__ params; } ;
struct mlx5e_cq_param {void* cqc; } ;


 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_EQE ;
 int MLX5_SET (void*,void*,int ,int ) ;
 int cq_max_count ;
 int cq_period ;
 int cq_period_mode ;
 int cq_period_start_from_cqe ;
 int log_cq_size ;
 int mlx5e_build_common_cq_param (struct mlx5e_priv*,struct mlx5e_cq_param*) ;

__attribute__((used)) static void
mlx5e_build_tx_cq_param(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param)
{
 void *cqc = param->cqc;

 MLX5_SET(cqc, cqc, log_cq_size, priv->params.log_sq_size);
 MLX5_SET(cqc, cqc, cq_period, priv->params.tx_cq_moderation_usec);
 MLX5_SET(cqc, cqc, cq_max_count, priv->params.tx_cq_moderation_pkts);

 switch (priv->params.tx_cq_moderation_mode) {
 case 0:
  MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
  break;
 default:
  if (MLX5_CAP_GEN(priv->mdev, cq_period_start_from_cqe))
   MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_CQE);
  else
   MLX5_SET(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
  break;
 }

 mlx5e_build_common_cq_param(priv, param);
}

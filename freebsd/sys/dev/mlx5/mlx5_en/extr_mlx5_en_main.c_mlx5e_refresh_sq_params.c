
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int mcq; } ;
struct mlx5e_sq {TYPE_1__ cq; } ;
struct TYPE_4__ {int tx_cq_moderation_mode; int tx_cq_moderation_pkts; int tx_cq_moderation_usec; } ;
struct mlx5e_priv {TYPE_2__ params; int mdev; } ;


 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_EQE ;
 int cq_period_mode_modify ;
 int mlx5_core_modify_cq_moderation (int ,int *,int ,int ) ;
 int mlx5_core_modify_cq_moderation_mode (int ,int *,int ,int ,int ) ;

__attribute__((used)) static int
mlx5e_refresh_sq_params(struct mlx5e_priv *priv, struct mlx5e_sq *sq)
{

 if (MLX5_CAP_GEN(priv->mdev, cq_period_mode_modify)) {
  uint8_t cq_mode;

  switch (priv->params.tx_cq_moderation_mode) {
  case 0:
  case 2:
   cq_mode = MLX5_CQ_PERIOD_MODE_START_FROM_EQE;
   break;
  default:
   cq_mode = MLX5_CQ_PERIOD_MODE_START_FROM_CQE;
   break;
  }

  return (mlx5_core_modify_cq_moderation_mode(priv->mdev, &sq->cq.mcq,
      priv->params.tx_cq_moderation_usec,
      priv->params.tx_cq_moderation_pkts,
      cq_mode));
 }

 return (mlx5_core_modify_cq_moderation(priv->mdev, &sq->cq.mcq,
     priv->params.tx_cq_moderation_usec,
     priv->params.tx_cq_moderation_pkts));
}

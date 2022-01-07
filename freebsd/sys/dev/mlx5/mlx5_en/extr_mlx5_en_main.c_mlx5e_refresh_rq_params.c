
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct net_dim_cq_moder {int pkts; int usec; } ;
struct TYPE_5__ {int mcq; } ;
struct TYPE_4__ {int profile_ix; scalar_t__ state; int mode; int work; } ;
struct mlx5e_rq {TYPE_2__ cq; int mtx; TYPE_1__ dim; } ;
struct TYPE_6__ {int rx_cq_moderation_mode; int rx_cq_moderation_pkts; int rx_cq_moderation_usec; } ;
struct mlx5e_priv {TYPE_3__ params; int mdev; } ;


 int MLX5E_DIM_DEFAULT_PROFILE ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_CQE ;
 int MLX5_CQ_PERIOD_MODE_START_FROM_EQE ;
 int NET_DIM_CQ_PERIOD_MODE_DISABLED ;
 int NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE ;
 int NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE ;
 int cancel_work_sync (int *) ;
 int cq_period_mode_modify ;
 int mlx5_core_modify_cq_moderation (int ,int *,int ,int ) ;
 int mlx5_core_modify_cq_moderation_mode (int ,int *,int ,int ,int ) ;
 int mlx5e_get_default_profile (struct mlx5e_priv*,int ,struct net_dim_cq_moder*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mlx5e_refresh_rq_params(struct mlx5e_priv *priv, struct mlx5e_rq *rq)
{

 if (MLX5_CAP_GEN(priv->mdev, cq_period_mode_modify)) {
  uint8_t cq_mode;
  uint8_t dim_mode;
  int retval;

  switch (priv->params.rx_cq_moderation_mode) {
  case 0:
  case 2:
   cq_mode = MLX5_CQ_PERIOD_MODE_START_FROM_EQE;
   dim_mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
   break;
  default:
   cq_mode = MLX5_CQ_PERIOD_MODE_START_FROM_CQE;
   dim_mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE;
   break;
  }


  mtx_lock(&rq->mtx);
  rq->dim.mode = NET_DIM_CQ_PERIOD_MODE_DISABLED;
  mtx_unlock(&rq->mtx);


  cancel_work_sync(&rq->dim.work);

  if (priv->params.rx_cq_moderation_mode >= 2) {
   struct net_dim_cq_moder curr;

   mlx5e_get_default_profile(priv, dim_mode, &curr);

   retval = mlx5_core_modify_cq_moderation_mode(priv->mdev, &rq->cq.mcq,
       curr.usec, curr.pkts, cq_mode);


   mtx_lock(&rq->mtx);
   rq->dim.mode = dim_mode;
   rq->dim.state = 0;
   rq->dim.profile_ix = MLX5E_DIM_DEFAULT_PROFILE;
   mtx_unlock(&rq->mtx);
  } else {
   retval = mlx5_core_modify_cq_moderation_mode(priv->mdev, &rq->cq.mcq,
       priv->params.rx_cq_moderation_usec,
       priv->params.rx_cq_moderation_pkts,
       cq_mode);
  }
  return (retval);
 }

 return (mlx5_core_modify_cq_moderation(priv->mdev, &rq->cq.mcq,
     priv->params.rx_cq_moderation_usec,
     priv->params.rx_cq_moderation_pkts));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* comp ) (TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_3__ mcq; } ;
struct mlx5e_sq {scalar_t__ cc; scalar_t__ pc; int lock; TYPE_2__ cq; int ifp; TYPE_1__* priv; int cev_callout; int cev_next_state; int running; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct TYPE_5__ {int media_status_last; struct mlx5_core_dev* mdev; } ;


 int IFM_ACTIVE ;
 int MLX5E_CEV_STATE_HOLD_NOPS ;
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX5_SQC_STATE_ERR ;
 int MLX5_SQC_STATE_RDY ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int ) ;
 int callout_stop (int *) ;
 int mlx5_en_err (int ,char*,int) ;
 int mlx5e_modify_sq (struct mlx5e_sq*,int ,int ) ;
 int mlx5e_sq_send_nops_locked (struct mlx5e_sq*,int) ;
 int msleep (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

void
mlx5e_drain_sq(struct mlx5e_sq *sq)
{
 int error;
 struct mlx5_core_dev *mdev= sq->priv->mdev;
 if (READ_ONCE(sq->running) == 0)
  return;


 WRITE_ONCE(sq->running, 0);


 mtx_lock(&sq->lock);


 sq->cev_next_state = MLX5E_CEV_STATE_HOLD_NOPS;
 callout_stop(&sq->cev_callout);


 mlx5e_sq_send_nops_locked(sq, 1);
 mtx_unlock(&sq->lock);


 mtx_lock(&sq->lock);
 while (sq->cc != sq->pc &&
     (sq->priv->media_status_last & IFM_ACTIVE) != 0 &&
     mdev->state != MLX5_DEVICE_STATE_INTERNAL_ERROR) {
  mtx_unlock(&sq->lock);
  msleep(1);
  sq->cq.mcq.comp(&sq->cq.mcq);
  mtx_lock(&sq->lock);
 }
 mtx_unlock(&sq->lock);


 error = mlx5e_modify_sq(sq, MLX5_SQC_STATE_RDY, MLX5_SQC_STATE_ERR);
 if (error != 0) {
  mlx5_en_err(sq->ifp,
      "mlx5e_modify_sq() from RDY to ERR failed: %d\n", error);
 }


 mtx_lock(&sq->lock);
 while (sq->cc != sq->pc &&
        mdev->state != MLX5_DEVICE_STATE_INTERNAL_ERROR) {
  mtx_unlock(&sq->lock);
  msleep(1);
  sq->cq.mcq.comp(&sq->cq.mcq);
  mtx_lock(&sq->lock);
 }
 mtx_unlock(&sq->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {TYPE_1__* mdev; } ;
struct mlx4_en_cq {int mcq; int timer; int is_tx; int cq_task; int tq; } ;
struct TYPE_2__ {int dev; } ;


 int del_timer_sync (int *) ;
 int mlx4_cq_free (int ,int *) ;
 int synchronize_rcu () ;
 int taskqueue_drain (int ,int *) ;

void mlx4_en_deactivate_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq *cq)
{
 taskqueue_drain(cq->tq, &cq->cq_task);
 if (!cq->is_tx) {
  synchronize_rcu();
 } else {
  del_timer_sync(&cq->timer);
 }

 mlx4_cq_free(priv->mdev->dev, &cq->mcq);
}

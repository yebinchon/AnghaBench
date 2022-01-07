
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_en_priv {struct mlx4_en_dev* mdev; int port; } ;
struct mlx4_en_dev {int dev; } ;
struct TYPE_2__ {int buf; } ;
struct mlx4_en_cq {scalar_t__ is_tx; int * buf; scalar_t__ buf_size; scalar_t__ vector; TYPE_1__ wqres; int tq; int cq_task; } ;


 scalar_t__ RX ;
 int kfree (struct mlx4_en_cq*) ;
 int mlx4_en_unmap_buffer (int *) ;
 int mlx4_free_hwq_res (int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ mlx4_is_eq_vector_valid (int ,int ,scalar_t__) ;
 int mlx4_release_eq (int ,scalar_t__) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

void mlx4_en_destroy_cq(struct mlx4_en_priv *priv, struct mlx4_en_cq **pcq)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_cq *cq = *pcq;

 taskqueue_drain(cq->tq, &cq->cq_task);
 taskqueue_free(cq->tq);
 mlx4_en_unmap_buffer(&cq->wqres.buf);
 mlx4_free_hwq_res(mdev->dev, &cq->wqres, cq->buf_size);
 if (mlx4_is_eq_vector_valid(mdev->dev, priv->port, cq->vector) &&
     cq->is_tx == RX)
  mlx4_release_eq(priv->mdev->dev, cq->vector);
 cq->vector = 0;
 cq->buf_size = 0;
 cq->buf = ((void*)0);
 kfree(cq);
 *pcq = ((void*)0);
}

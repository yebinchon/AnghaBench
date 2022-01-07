
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mlx4_en_priv {int dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {TYPE_3__* dev; } ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct TYPE_12__ {TYPE_2__ direct; } ;
struct TYPE_11__ {TYPE_5__ buf; } ;
struct mlx4_en_cq {int size; int buf_size; int ring; int is_tx; TYPE_4__ wqres; struct mlx4_cqe* buf; int lock; int vector; int tq; int cq_task; } ;
struct mlx4_cqe {int dummy; } ;
typedef enum cq_type { ____Placeholder_cq_type } cq_type ;
struct TYPE_8__ {int cqe_size; int num_comp_vectors; } ;
struct TYPE_10__ {TYPE_1__ caps; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int PI_NET ;
 int RX ;
 int TASK_INIT (int *,int ,int ,struct mlx4_en_cq*) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int if_name (int ) ;
 int kfree (struct mlx4_en_cq*) ;
 struct mlx4_en_cq* kzalloc (int,int ) ;
 struct mlx4_en_cq* kzalloc_node (int,int ,int) ;
 int mlx4_alloc_hwq_res (TYPE_3__*,TYPE_4__*,int,int) ;
 int mlx4_en_map_buffer (TYPE_5__*) ;
 int mlx4_en_rx_que ;
 int mlx4_en_tx_que ;
 int mlx4_free_hwq_res (TYPE_3__*,TYPE_4__*,int) ;
 int spin_lock_init (int *) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

int mlx4_en_create_cq(struct mlx4_en_priv *priv,
        struct mlx4_en_cq **pcq,
        int entries, int ring, enum cq_type mode,
        int node)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_cq *cq;
 int err;

 cq = kzalloc_node(sizeof(*cq), GFP_KERNEL, node);
 if (!cq) {
  cq = kzalloc(sizeof(*cq), GFP_KERNEL);
  if (!cq) {
   en_err(priv, "Failed to allocate CQ structure\n");
   return -ENOMEM;
  }
 }

 cq->size = entries;
 cq->buf_size = cq->size * mdev->dev->caps.cqe_size;

 cq->tq = taskqueue_create_fast("mlx4_en_que", M_NOWAIT,
                        taskqueue_thread_enqueue, &cq->tq);
        if (mode == RX) {
  TASK_INIT(&cq->cq_task, 0, mlx4_en_rx_que, cq);
  taskqueue_start_threads(&cq->tq, 1, PI_NET, "%s rx cq",
    if_name(priv->dev));

 } else {
  TASK_INIT(&cq->cq_task, 0, mlx4_en_tx_que, cq);
  taskqueue_start_threads(&cq->tq, 1, PI_NET, "%s tx cq",
    if_name(priv->dev));
 }

 cq->ring = ring;
 cq->is_tx = mode;
 cq->vector = mdev->dev->caps.num_comp_vectors;
 spin_lock_init(&cq->lock);

 err = mlx4_alloc_hwq_res(mdev->dev, &cq->wqres,
    cq->buf_size, 2 * PAGE_SIZE);
 if (err)
  goto err_cq;

 err = mlx4_en_map_buffer(&cq->wqres.buf);
 if (err)
  goto err_res;

 cq->buf = (struct mlx4_cqe *)cq->wqres.buf.direct.buf;
 *pcq = cq;

 return 0;

err_res:
 mlx4_free_hwq_res(mdev->dev, &cq->wqres, cq->buf_size);
err_cq:
 kfree(cq);
 *pcq = ((void*)0);
 return err;
}

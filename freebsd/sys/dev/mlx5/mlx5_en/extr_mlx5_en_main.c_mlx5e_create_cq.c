
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5e_priv {int cq_uar; struct mlx5_core_dev* mdev; } ;
struct TYPE_5__ {scalar_t__ db_numa_node; scalar_t__ buf_numa_node; } ;
struct mlx5e_cq_param {int cqc; TYPE_2__ wq; } ;
struct TYPE_4__ {scalar_t__* db; } ;
struct TYPE_6__ {TYPE_1__ db; } ;
struct mlx5_core_cq {int cqe_sz; int vector; int irqn; int * uar; int event; int * comp; scalar_t__* arm_db; scalar_t__* set_ci_db; } ;
struct mlx5e_cq {struct mlx5e_priv* priv; int wq; TYPE_3__ wq_ctrl; struct mlx5_core_cq mcq; } ;
struct mlx5_cqe64 {int op_own; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int mlx5e_cq_comp_t ;


 int mlx5_cqwq_create (struct mlx5_core_dev*,TYPE_2__*,int ,int *,TYPE_3__*) ;
 scalar_t__ mlx5_cqwq_get_size (int *) ;
 struct mlx5_cqe64* mlx5_cqwq_get_wqe (int *,scalar_t__) ;
 int mlx5_vector2eqn (struct mlx5_core_dev*,int,int*,int*) ;
 int mlx5e_cq_error_event ;

__attribute__((used)) static int
mlx5e_create_cq(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param,
    struct mlx5e_cq *cq,
    mlx5e_cq_comp_t *comp,
    int eq_ix)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 struct mlx5_core_cq *mcq = &cq->mcq;
 int eqn_not_used;
 int irqn;
 int err;
 u32 i;

 param->wq.buf_numa_node = 0;
 param->wq.db_numa_node = 0;

 err = mlx5_vector2eqn(mdev, eq_ix, &eqn_not_used, &irqn);
 if (err)
  return (err);

 err = mlx5_cqwq_create(mdev, &param->wq, param->cqc, &cq->wq,
     &cq->wq_ctrl);
 if (err)
  return (err);

 mcq->cqe_sz = 64;
 mcq->set_ci_db = cq->wq_ctrl.db.db;
 mcq->arm_db = cq->wq_ctrl.db.db + 1;
 *mcq->set_ci_db = 0;
 *mcq->arm_db = 0;
 mcq->vector = eq_ix;
 mcq->comp = comp;
 mcq->event = mlx5e_cq_error_event;
 mcq->irqn = irqn;
 mcq->uar = &priv->cq_uar;

 for (i = 0; i < mlx5_cqwq_get_size(&cq->wq); i++) {
  struct mlx5_cqe64 *cqe = mlx5_cqwq_get_wqe(&cq->wq, i);

  cqe->op_own = 0xf1;
 }

 cq->priv = priv;

 return (0);
}

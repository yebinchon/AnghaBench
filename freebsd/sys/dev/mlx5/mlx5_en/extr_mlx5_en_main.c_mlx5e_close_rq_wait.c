
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct mlx5e_rq {TYPE_1__ dim; int cq; } ;


 int cancel_work_sync (int *) ;
 int mlx5e_close_cq (int *) ;
 int mlx5e_destroy_rq (struct mlx5e_rq*) ;
 int mlx5e_disable_rq (struct mlx5e_rq*) ;

__attribute__((used)) static void
mlx5e_close_rq_wait(struct mlx5e_rq *rq)
{

 mlx5e_disable_rq(rq);
 mlx5e_close_cq(&rq->cq);
 cancel_work_sync(&rq->dim.work);
 mlx5e_destroy_rq(rq);
}

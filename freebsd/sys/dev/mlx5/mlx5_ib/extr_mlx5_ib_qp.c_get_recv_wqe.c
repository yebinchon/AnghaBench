
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wqe_shift; scalar_t__ offset; } ;
struct mlx5_ib_qp {TYPE_1__ rq; } ;


 void* get_wqe (struct mlx5_ib_qp*,scalar_t__) ;

__attribute__((used)) static void *get_recv_wqe(struct mlx5_ib_qp *qp, int n)
{
 return get_wqe(qp, qp->rq.offset + (n << qp->rq.wqe_shift));
}

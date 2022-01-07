
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct mlx5_ib_qp {TYPE_1__ sq; } ;


 int MLX5_IB_SQ_STRIDE ;
 void* get_wqe (struct mlx5_ib_qp*,scalar_t__) ;

void *mlx5_get_send_wqe(struct mlx5_ib_qp *qp, int n)
{
 return get_wqe(qp, qp->sq.offset + (n << MLX5_IB_SQ_STRIDE));
}

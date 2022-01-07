
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wqe_shift; } ;
struct mlx5_ib_srq {TYPE_1__ msrq; int buf; } ;


 void* mlx5_buf_offset (int *,int) ;

__attribute__((used)) static void *get_wqe(struct mlx5_ib_srq *srq, int n)
{
 return mlx5_buf_offset(&srq->buf, n << srq->msrq.wqe_shift);
}

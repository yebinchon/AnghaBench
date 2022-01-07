
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cqe_sz; } ;
struct mlx5_ib_cq {TYPE_1__ mcq; int buf; } ;


 void* get_cqe_from_buf (int *,int,int ) ;

__attribute__((used)) static void *get_cqe(struct mlx5_ib_cq *cq, int n)
{
 return get_cqe_from_buf(&cq->buf, n, cq->mcq.cqe_sz);
}

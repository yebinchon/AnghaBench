
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cons_index; } ;
struct mlx5_ib_cq {TYPE_1__ mcq; } ;


 void* get_sw_cqe (struct mlx5_ib_cq*,int ) ;

__attribute__((used)) static void *next_cqe_sw(struct mlx5_ib_cq *cq)
{
 return get_sw_cqe(cq, cq->mcq.cons_index);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sz_m1; } ;
struct mlx5e_cq {TYPE_1__ wq; } ;
struct mlx5_cqe64 {int dummy; } ;


 int memcpy (void*,int ,int) ;
 int mlx5_cqwq_get_wqe (TYPE_1__*,int) ;

__attribute__((used)) static inline void
mlx5e_read_cqe_slot(struct mlx5e_cq *cq, u32 cc, void *data)
{
 memcpy(data, mlx5_cqwq_get_wqe(&cq->wq, (cc & cq->wq.sz_m1)),
     sizeof(struct mlx5_cqe64));
}

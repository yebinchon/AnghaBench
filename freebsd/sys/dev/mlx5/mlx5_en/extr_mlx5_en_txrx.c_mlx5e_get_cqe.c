
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_cq {int wq; } ;
struct mlx5_cqe64 {int op_own; } ;


 int MLX5_CQE_OWNER_MASK ;
 int atomic_thread_fence_acq () ;
 int mlx5_cqwq_get_ci (int *) ;
 struct mlx5_cqe64* mlx5_cqwq_get_wqe (int *,int ) ;
 int mlx5_cqwq_get_wrap_cnt (int *) ;

struct mlx5_cqe64 *
mlx5e_get_cqe(struct mlx5e_cq *cq)
{
 struct mlx5_cqe64 *cqe;

 cqe = mlx5_cqwq_get_wqe(&cq->wq, mlx5_cqwq_get_ci(&cq->wq));

 if ((cqe->op_own ^ mlx5_cqwq_get_wrap_cnt(&cq->wq)) & MLX5_CQE_OWNER_MASK)
  return (((void*)0));


 atomic_thread_fence_acq();

 return (cqe);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cqwq {void* buf; int log_stride; } ;



__attribute__((used)) static inline void *mlx5_cqwq_get_wqe(struct mlx5_cqwq *wq, u32 ix)
{
 return wq->buf + (ix << wq->log_stride);
}

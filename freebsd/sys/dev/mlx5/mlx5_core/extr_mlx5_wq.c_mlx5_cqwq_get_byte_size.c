
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cqwq {int log_stride; } ;


 int mlx5_cqwq_get_size (struct mlx5_cqwq*) ;

__attribute__((used)) static u32 mlx5_cqwq_get_byte_size(struct mlx5_cqwq *wq)
{
 return mlx5_cqwq_get_size(wq) << wq->log_stride;
}

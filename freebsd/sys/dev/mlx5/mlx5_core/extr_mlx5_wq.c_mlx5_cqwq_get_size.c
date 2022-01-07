
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_cqwq {scalar_t__ sz_m1; } ;



u32 mlx5_cqwq_get_size(struct mlx5_cqwq *wq)
{
 return wq->sz_m1 + 1;
}

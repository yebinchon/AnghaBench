
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_cqwq {int cc; int sz_m1; } ;



__attribute__((used)) static inline u32 mlx5_cqwq_get_ci(struct mlx5_cqwq *wq)
{
 return wq->cc & wq->sz_m1;
}

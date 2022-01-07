
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_wq_cyc {scalar_t__ sz_m1; } ;



u32 mlx5_wq_cyc_get_size(struct mlx5_wq_cyc *wq)
{
 return (u32)wq->sz_m1 + 1;
}

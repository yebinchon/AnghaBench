
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_wq_ll {int log_stride; } ;


 int mlx5_wq_ll_get_size (struct mlx5_wq_ll*) ;

__attribute__((used)) static u32 mlx5_wq_ll_get_byte_size(struct mlx5_wq_ll *wq)
{
 return mlx5_wq_ll_get_size(wq) << wq->log_stride;
}

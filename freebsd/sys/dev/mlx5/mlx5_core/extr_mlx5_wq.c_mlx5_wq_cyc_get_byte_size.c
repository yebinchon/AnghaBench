
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_wq_cyc {int log_stride; } ;


 int mlx5_wq_cyc_get_size (struct mlx5_wq_cyc*) ;

__attribute__((used)) static u32 mlx5_wq_cyc_get_byte_size(struct mlx5_wq_cyc *wq)
{
 return mlx5_wq_cyc_get_size(wq) << wq->log_stride;
}

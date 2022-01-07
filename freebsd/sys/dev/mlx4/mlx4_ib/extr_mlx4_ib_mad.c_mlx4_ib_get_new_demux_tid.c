
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_demux_ctx {int tid; } ;
typedef int __be64 ;


 int atomic_inc_return (int *) ;
 int cpu_to_be64 (int) ;

__be64 mlx4_ib_get_new_demux_tid(struct mlx4_ib_demux_ctx *ctx)
{
 return cpu_to_be64(atomic_inc_return(&ctx->tid)) |
  cpu_to_be64(0xff00000000000000LL);
}

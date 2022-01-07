
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_wqe_inline_seg {int byte_count; } ;


 int cpu_to_be32 (unsigned int) ;
 int wmb () ;

__attribute__((used)) static void set_mlx_icrc_seg(void *dseg)
{
 u32 *t = dseg;
 struct mlx4_wqe_inline_seg *iseg = dseg;

 t[1] = 0;
 wmb();

 iseg->byte_count = cpu_to_be32((1U << 31) | 4);
}

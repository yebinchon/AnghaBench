
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_uuar_info {int num_uars; int num_low_latency_uuars; } ;


 int MLX5_NON_FP_BF_REGS_PER_PAGE ;

__attribute__((used)) static int num_med_uuar(struct mlx5_uuar_info *uuari)
{
 int n;

 n = uuari->num_uars * MLX5_NON_FP_BF_REGS_PER_PAGE -
  uuari->num_low_latency_uuars - 1;

 return n >= 0 ? n : 0;
}

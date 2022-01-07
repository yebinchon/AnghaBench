
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_mpt_entry {int pd_flags; } ;


 int MLX4_MPT_PD_FLAG_FAST_REG ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static int mr_is_fmr(struct mlx4_mpt_entry *mpt)
{
 return be32_to_cpu(mpt->pd_flags) & MLX4_MPT_PD_FLAG_FAST_REG;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int MLX5_MKEY_MASK_A ;
 int MLX5_MKEY_MASK_FREE ;
 int MLX5_MKEY_MASK_KEY ;
 int MLX5_MKEY_MASK_LEN ;
 int MLX5_MKEY_MASK_LR ;
 int MLX5_MKEY_MASK_LW ;
 int MLX5_MKEY_MASK_PAGE_SIZE ;
 int MLX5_MKEY_MASK_PD ;
 int MLX5_MKEY_MASK_RR ;
 int MLX5_MKEY_MASK_RW ;
 int MLX5_MKEY_MASK_START_ADDR ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static __be64 get_umr_reg_mr_mask(void)
{
 u64 result;

 result = MLX5_MKEY_MASK_LEN |
   MLX5_MKEY_MASK_PAGE_SIZE |
   MLX5_MKEY_MASK_START_ADDR |
   MLX5_MKEY_MASK_PD |
   MLX5_MKEY_MASK_LR |
   MLX5_MKEY_MASK_LW |
   MLX5_MKEY_MASK_KEY |
   MLX5_MKEY_MASK_RR |
   MLX5_MKEY_MASK_RW |
   MLX5_MKEY_MASK_A |
   MLX5_MKEY_MASK_FREE;

 return cpu_to_be64(result);
}

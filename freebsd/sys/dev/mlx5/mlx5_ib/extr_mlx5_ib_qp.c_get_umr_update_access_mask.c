
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __be64 ;


 int MLX5_MKEY_MASK_A ;
 int MLX5_MKEY_MASK_FREE ;
 int MLX5_MKEY_MASK_KEY ;
 int MLX5_MKEY_MASK_LW ;
 int MLX5_MKEY_MASK_RR ;
 int MLX5_MKEY_MASK_RW ;
 int cpu_to_be64 (int) ;

__attribute__((used)) static __be64 get_umr_update_access_mask(void)
{
 u64 result;

 result = MLX5_MKEY_MASK_LW |
   MLX5_MKEY_MASK_RR |
   MLX5_MKEY_MASK_RW |
   MLX5_MKEY_MASK_A |
   MLX5_MKEY_MASK_KEY |
   MLX5_MKEY_MASK_FREE;

 return cpu_to_be64(result);
}

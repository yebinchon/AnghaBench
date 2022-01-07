
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MLX5_ST_SZ_BYTES (int ) ;
 int fte_match_param ;
 int memcmp (void*,void*,int ) ;

bool fs_match_exact_mask(u8 match_criteria_enable1,
    u8 match_criteria_enable2,
    void *mask1, void *mask2)
{
 return match_criteria_enable1 == match_criteria_enable2 &&
  !memcmp(mask1, mask2, MLX5_ST_SZ_BYTES(fte_match_param));
}

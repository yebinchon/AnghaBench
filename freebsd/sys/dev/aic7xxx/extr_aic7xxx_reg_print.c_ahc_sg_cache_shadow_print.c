
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int SG_CACHE_SHADOW_parse_table ;
 int ahc_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahc_sg_cache_shadow_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(SG_CACHE_SHADOW_parse_table, 3, "SG_CACHE_SHADOW",
     0xfc, regvalue, cur_col, wrap));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLX5_SET (int ,void*,int ,int) ;
 int fte_match_set_lyr_2_4 ;
 int ip_dscp ;
 int ip_ecn ;

__attribute__((used)) static void set_tos(void *outer_c, void *outer_v, u8 mask, u8 val)
{
 MLX5_SET(fte_match_set_lyr_2_4, outer_c, ip_ecn, mask);
 MLX5_SET(fte_match_set_lyr_2_4, outer_v, ip_ecn, val);
 MLX5_SET(fte_match_set_lyr_2_4, outer_c, ip_dscp, mask >> 2);
 MLX5_SET(fte_match_set_lyr_2_4, outer_v, ip_dscp, val >> 2);
}

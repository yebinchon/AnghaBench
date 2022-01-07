
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLX5_SET (int ,void*,int ,int ) ;
 int fte_match_set_lyr_2_4 ;
 int ip_protocol ;

__attribute__((used)) static void set_proto(void *outer_c, void *outer_v, u8 mask, u8 val)
{
 MLX5_SET(fte_match_set_lyr_2_4, outer_c, ip_protocol, mask);
 MLX5_SET(fte_match_set_lyr_2_4, outer_v, ip_protocol, val);
}

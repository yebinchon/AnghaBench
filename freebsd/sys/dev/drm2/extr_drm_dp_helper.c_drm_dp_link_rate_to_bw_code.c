
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DP_LINK_BW_1_62 ;
 int DP_LINK_BW_2_7 ;
 int DP_LINK_BW_5_4 ;

u8 drm_dp_link_rate_to_bw_code(int link_rate)
{
 switch (link_rate) {
 case 162000:
 default:
  return DP_LINK_BW_1_62;
 case 270000:
  return DP_LINK_BW_2_7;
 case 540000:
  return DP_LINK_BW_5_4;
 }
}

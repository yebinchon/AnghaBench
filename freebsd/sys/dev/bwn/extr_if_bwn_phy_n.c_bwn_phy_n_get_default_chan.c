
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwn_mac {int dummy; } ;


 scalar_t__ BWN_BAND_2G ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;

uint32_t
bwn_phy_n_get_default_chan(struct bwn_mac *mac)
{

 if (bwn_current_band(mac) == BWN_BAND_2G)
  return (1);
 return (36);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int bwn_phy_lp_get_default_chan (struct bwn_mac*) ;
 int bwn_phy_lp_set_gaintbl (struct bwn_mac*,int ) ;
 int bwn_phy_lp_tblinit_r01 (struct bwn_mac*) ;
 int bwn_phy_lp_tblinit_r2 (struct bwn_mac*) ;
 int bwn_phy_lp_tblinit_txgain (struct bwn_mac*) ;
 int ieee80211_ieee2mhz (int ,int ) ;

__attribute__((used)) static void
bwn_phy_lp_tblinit(struct bwn_mac *mac)
{
 uint32_t freq = ieee80211_ieee2mhz(bwn_phy_lp_get_default_chan(mac), 0);

 if (mac->mac_phy.rev < 2) {
  bwn_phy_lp_tblinit_r01(mac);
  bwn_phy_lp_tblinit_txgain(mac);
  bwn_phy_lp_set_gaintbl(mac, freq);
  return;
 }

 bwn_phy_lp_tblinit_r2(mac);
 bwn_phy_lp_tblinit_txgain(mac);
}

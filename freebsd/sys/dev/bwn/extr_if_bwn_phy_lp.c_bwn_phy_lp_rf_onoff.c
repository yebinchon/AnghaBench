
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_PHY_AFE_DDFS ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_RF_OVERRIDE_0 ;
 int BWN_PHY_RF_OVERRIDE_2 ;
 int BWN_PHY_RF_OVERRIDE_2_VAL ;
 int BWN_PHY_RF_OVERRIDE_VAL_0 ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;

void
bwn_phy_lp_rf_onoff(struct bwn_mac *mac, int on)
{

 if (on) {
  BWN_PHY_MASK(mac, BWN_PHY_RF_OVERRIDE_0, 0xe0ff);
  BWN_PHY_MASK(mac, BWN_PHY_RF_OVERRIDE_2,
      (mac->mac_phy.rev >= 2) ? 0xf7f7 : 0xffe7);
  return;
 }

 if (mac->mac_phy.rev >= 2) {
  BWN_PHY_MASK(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0x83ff);
  BWN_PHY_SET(mac, BWN_PHY_RF_OVERRIDE_0, 0x1f00);
  BWN_PHY_MASK(mac, BWN_PHY_AFE_DDFS, 0x80ff);
  BWN_PHY_MASK(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xdfff);
  BWN_PHY_SET(mac, BWN_PHY_RF_OVERRIDE_2, 0x0808);
  return;
 }

 BWN_PHY_MASK(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xe0ff);
 BWN_PHY_SET(mac, BWN_PHY_RF_OVERRIDE_0, 0x1f00);
 BWN_PHY_MASK(mac, BWN_PHY_RF_OVERRIDE_2_VAL, 0xfcff);
 BWN_PHY_SET(mac, BWN_PHY_RF_OVERRIDE_2, 0x0018);
}

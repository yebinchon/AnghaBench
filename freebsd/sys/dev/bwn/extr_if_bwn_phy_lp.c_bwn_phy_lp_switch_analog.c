
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_PHY_AFE_CTL_OVR ;
 int BWN_PHY_AFE_CTL_OVRVAL ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;

void
bwn_phy_lp_switch_analog(struct bwn_mac *mac, int on)
{

 if (on) {
  BWN_PHY_MASK(mac, BWN_PHY_AFE_CTL_OVR, 0xfff8);
  return;
 }

 BWN_PHY_SET(mac, BWN_PHY_AFE_CTL_OVRVAL, 0x0007);
 BWN_PHY_SET(mac, BWN_PHY_AFE_CTL_OVR, 0x0007);
}

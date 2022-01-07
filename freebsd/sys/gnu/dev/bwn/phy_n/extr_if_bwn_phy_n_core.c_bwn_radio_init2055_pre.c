
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_NPHY_RFCTL_CMD ;
 int BWN_NPHY_RFCTL_CMD_CHIP0PU ;
 int BWN_NPHY_RFCTL_CMD_OEPORFORCE ;
 int BWN_NPHY_RFCTL_CMD_PORFORCE ;
 int BWN_PHY_MASK (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void bwn_radio_init2055_pre(struct bwn_mac *mac)
{
 BWN_PHY_MASK(mac, BWN_NPHY_RFCTL_CMD,
       ~BWN_NPHY_RFCTL_CMD_PORFORCE);
 BWN_PHY_SET(mac, BWN_NPHY_RFCTL_CMD,
      BWN_NPHY_RFCTL_CMD_CHIP0PU |
      BWN_NPHY_RFCTL_CMD_OEPORFORCE);
 BWN_PHY_SET(mac, BWN_NPHY_RFCTL_CMD,
      BWN_NPHY_RFCTL_CMD_PORFORCE);
}

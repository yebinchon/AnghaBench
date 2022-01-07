
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwi_phy {int phy_flags; scalar_t__ phy_mode; int phy_rev; } ;
struct bwi_mac {int mac_sc; struct bwi_phy mac_phy; } ;


 int BWI_MAC_STATUS ;
 int BWI_PHY_F_CALIBRATED ;
 int CSR_READ_4 (int ,int ) ;
 scalar_t__ IEEE80211_MODE_11G ;
 int bwi_mac_reset (struct bwi_mac*,int) ;
 int bwi_phy_init_11g (struct bwi_mac*) ;

int
bwi_phy_calibrate(struct bwi_mac *mac)
{
 struct bwi_phy *phy = &mac->mac_phy;


 CSR_READ_4(mac->mac_sc, BWI_MAC_STATUS);


 if (phy->phy_flags & BWI_PHY_F_CALIBRATED)
  return 0;

 if (phy->phy_mode == IEEE80211_MODE_11G && phy->phy_rev == 1) {
  bwi_mac_reset(mac, 0);
  bwi_phy_init_11g(mac);
  bwi_mac_reset(mac, 1);
 }

 phy->phy_flags |= BWI_PHY_F_CALIBRATED;
 return 0;
}

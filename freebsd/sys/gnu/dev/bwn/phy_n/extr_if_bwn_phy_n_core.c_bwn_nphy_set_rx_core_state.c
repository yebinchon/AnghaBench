
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bwn_phy_n {int phyrxchain; scalar_t__ hang_avoid; } ;
struct bwn_phy {int rev; struct bwn_phy_n* phy_n; } ;
struct bwn_mac {struct bwn_phy mac_phy; } ;


 int BWN_NPHY_HPANT_SWTHRES ;
 int BWN_NPHY_RFSEQCA ;
 int BWN_NPHY_RFSEQCA_RXEN ;
 int BWN_NPHY_RFSEQCA_RXEN_SHIFT ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int ,int) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int BWN_RFSEQ_RESET2RX ;
 int bwn_mac_enable (struct bwn_mac*) ;
 int bwn_mac_suspend (struct bwn_mac*) ;
 int bwn_nphy_force_rf_sequence (struct bwn_mac*,int ) ;
 int bwn_nphy_stay_in_carrier_search (struct bwn_mac*,int) ;

__attribute__((used)) static void bwn_nphy_set_rx_core_state(struct bwn_mac *mac, uint8_t mask)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_phy_n *nphy = phy->phy_n;


 nphy->phyrxchain = mask;

 if (0 )
  return;

 bwn_mac_suspend(mac);

 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 1);

 BWN_PHY_SETMASK(mac, BWN_NPHY_RFSEQCA, ~BWN_NPHY_RFSEQCA_RXEN,
   (mask & 0x3) << BWN_NPHY_RFSEQCA_RXEN_SHIFT);

 if ((mask & 0x3) != 0x3) {
  BWN_PHY_WRITE(mac, BWN_NPHY_HPANT_SWTHRES, 1);
  if (mac->mac_phy.rev >= 3) {

  }
 } else {
  BWN_PHY_WRITE(mac, BWN_NPHY_HPANT_SWTHRES, 0x1E);
  if (mac->mac_phy.rev >= 3) {

  }
 }

 bwn_nphy_force_rf_sequence(mac, BWN_RFSEQ_RESET2RX);

 if (nphy->hang_avoid)
  bwn_nphy_stay_in_carrier_search(mac, 0);

 bwn_mac_enable(mac);
}

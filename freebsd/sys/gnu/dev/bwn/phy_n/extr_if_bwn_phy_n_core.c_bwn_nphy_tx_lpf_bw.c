
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_NPHY_TXF_40CO_B1S2 ;
 int BWN_NPHY_TXF_40CO_B32S2 ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 scalar_t__ bwn_is_40mhz (struct bwn_mac*) ;
 scalar_t__ bwn_nphy_ipa (struct bwn_mac*) ;

__attribute__((used)) static void bwn_nphy_tx_lpf_bw(struct bwn_mac *mac)
{
 uint16_t tmp;

 if (mac->mac_phy.rev < 3 || mac->mac_phy.rev >= 7)
  return;

 if (bwn_nphy_ipa(mac))
  tmp = bwn_is_40mhz(mac) ? 5 : 4;
 else
  tmp = bwn_is_40mhz(mac) ? 3 : 1;
 BWN_PHY_WRITE(mac, BWN_NPHY_TXF_40CO_B32S2,
        (tmp << 9) | (tmp << 6) | (tmp << 3) | tmp);

 if (bwn_nphy_ipa(mac)) {
  tmp = bwn_is_40mhz(mac) ? 4 : 1;
  BWN_PHY_WRITE(mac, BWN_NPHY_TXF_40CO_B1S2,
         (tmp << 9) | (tmp << 6) | (tmp << 3) | tmp);
 }
}

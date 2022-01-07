
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ phy_mode; } ;
struct bwi_mac {TYPE_1__ mac_phy; } ;


 int BWI_COMM_MOBJ ;
 scalar_t__ BWI_COMM_MOBJ_TSSI_DS ;
 scalar_t__ BWI_COMM_MOBJ_TSSI_OFDM ;
 int BWI_HI_TSSI_MASK ;
 int BWI_INVALID_TSSI ;
 int BWI_LO_TSSI_MASK ;
 scalar_t__ IEEE80211_MODE_11A ;
 int MOBJ_WRITE_2 (struct bwi_mac*,int ,scalar_t__,int) ;
 int __SHIFTIN (int ,int ) ;

void
bwi_rf_clear_tssi(struct bwi_mac *mac)
{

 if (mac->mac_phy.phy_mode == IEEE80211_MODE_11A) {

 } else {
  uint16_t val;
  int i;

  val = __SHIFTIN(BWI_INVALID_TSSI, BWI_LO_TSSI_MASK) |
        __SHIFTIN(BWI_INVALID_TSSI, BWI_HI_TSSI_MASK);

  for (i = 0; i < 2; ++i) {
   MOBJ_WRITE_2(mac, BWI_COMM_MOBJ,
    BWI_COMM_MOBJ_TSSI_DS + (i * 2), val);
  }

  for (i = 0; i < 2; ++i) {
   MOBJ_WRITE_2(mac, BWI_COMM_MOBJ,
    BWI_COMM_MOBJ_TSSI_OFDM + (i * 2), val);
  }
 }
}

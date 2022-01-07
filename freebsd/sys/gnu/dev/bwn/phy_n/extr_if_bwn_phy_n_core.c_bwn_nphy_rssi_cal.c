
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int N_RSSI_NB ;
 int N_RSSI_W1 ;
 int N_RSSI_W2 ;
 int bwn_nphy_rev2_rssi_cal (struct bwn_mac*,int ) ;
 int bwn_nphy_rev3_rssi_cal (struct bwn_mac*) ;

__attribute__((used)) static void bwn_nphy_rssi_cal(struct bwn_mac *mac)
{
 if (mac->mac_phy.rev >= 19) {

 } else if (mac->mac_phy.rev >= 3) {
  bwn_nphy_rev3_rssi_cal(mac);
 } else {
  bwn_nphy_rev2_rssi_cal(mac, N_RSSI_NB);
  bwn_nphy_rev2_rssi_cal(mac, N_RSSI_W1);
  bwn_nphy_rev2_rssi_cal(mac, N_RSSI_W2);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;
typedef enum n_rssi_type { ____Placeholder_n_rssi_type } n_rssi_type ;


 int bwn_nphy_rev2_rssi_select (struct bwn_mac*,int ,int) ;
 int bwn_nphy_rev3_rssi_select (struct bwn_mac*,int ,int) ;
 int bwn_nphy_rssi_select_rev19 (struct bwn_mac*,int ,int) ;

__attribute__((used)) static void bwn_nphy_rssi_select(struct bwn_mac *mac, uint8_t code,
     enum n_rssi_type type)
{
 if (mac->mac_phy.rev >= 19)
  bwn_nphy_rssi_select_rev19(mac, code, type);
 else if (mac->mac_phy.rev >= 3)
  bwn_nphy_rev3_rssi_select(mac, code, type);
 else
  bwn_nphy_rev2_rssi_select(mac, code, type);
}

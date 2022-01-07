
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHY_RF_OVERRIDE_0 ;
 int BWN_PHY_RF_OVERRIDE_VAL_0 ;
 int BWN_PHY_SET (struct bwn_mac*,int ,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;

__attribute__((used)) static void
bwn_phy_lp_set_trsw_over(struct bwn_mac *mac, uint8_t tx, uint8_t rx)
{
 uint16_t trsw = (tx << 1) | rx;

 BWN_PHY_SETMASK(mac, BWN_PHY_RF_OVERRIDE_VAL_0, 0xfffc, trsw);
 BWN_PHY_SET(mac, BWN_PHY_RF_OVERRIDE_0, 0x3);
}

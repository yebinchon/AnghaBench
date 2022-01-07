
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_mac {int dummy; } ;


 int BWN_B2062_S_RFPLLCTL21 ;
 int BWN_RF_WRITE (struct bwn_mac*,int ,int) ;
 int DELAY (int) ;

__attribute__((used)) static void
bwn_phy_lp_b2062_vco_calib(struct bwn_mac *mac)
{

 BWN_RF_WRITE(mac, BWN_B2062_S_RFPLLCTL21, 0x42);
 BWN_RF_WRITE(mac, BWN_B2062_S_RFPLLCTL21, 0x62);
 DELAY(200);
}

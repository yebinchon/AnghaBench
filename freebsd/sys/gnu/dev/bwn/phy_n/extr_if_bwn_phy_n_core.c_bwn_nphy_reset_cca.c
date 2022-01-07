
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_NPHY_BBCFG ;
 int BWN_NPHY_BBCFG_RSTCCA ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int BWN_RFSEQ_RESET2RX ;
 int DELAY (int) ;
 int bwn_nphy_force_rf_sequence (struct bwn_mac*,int ) ;
 int bwn_phy_force_clock (struct bwn_mac*,int) ;

__attribute__((used)) static void bwn_nphy_reset_cca(struct bwn_mac *mac)
{
 uint16_t bbcfg;

 bwn_phy_force_clock(mac, 1);
 bbcfg = BWN_PHY_READ(mac, BWN_NPHY_BBCFG);
 BWN_PHY_WRITE(mac, BWN_NPHY_BBCFG, bbcfg | BWN_NPHY_BBCFG_RSTCCA);
 DELAY(1);
 BWN_PHY_WRITE(mac, BWN_NPHY_BBCFG, bbcfg & ~BWN_NPHY_BBCFG_RSTCCA);
 bwn_phy_force_clock(mac, 0);
 bwn_nphy_force_rf_sequence(mac, BWN_RFSEQ_RESET2RX);
}

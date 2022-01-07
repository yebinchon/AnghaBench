
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int rev; TYPE_1__* phy_n; } ;
struct bwn_mac {TYPE_2__ mac_phy; } ;
struct TYPE_3__ {int * tx_rx_cal_phy_saveregs; } ;


 int BWN_NPHY_AFECTL_C1 ;
 int BWN_NPHY_AFECTL_C2 ;
 int BWN_NPHY_AFECTL_OVER ;
 int BWN_NPHY_AFECTL_OVER1 ;
 int BWN_NPHY_BBCFG ;
 int BWN_NPHY_PAPD_EN0 ;
 int BWN_NPHY_PAPD_EN1 ;
 int BWN_NPHY_RFCTL_INTC1 ;
 int BWN_NPHY_RFCTL_INTC2 ;
 int BWN_NTAB16 (int,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int ) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int ) ;
 int bwn_nphy_reset_cca (struct bwn_mac*) ;
 int bwn_ntab_write (struct bwn_mac*,int ,int ) ;

__attribute__((used)) static void bwn_nphy_tx_cal_phy_cleanup(struct bwn_mac *mac)
{
 uint16_t *regs = mac->mac_phy.phy_n->tx_rx_cal_phy_saveregs;

 if (mac->mac_phy.rev >= 3) {
  BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_C1, regs[0]);
  BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_C2, regs[1]);
  BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_OVER1, regs[2]);
  BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_OVER, regs[3]);
  BWN_PHY_WRITE(mac, BWN_NPHY_BBCFG, regs[4]);
  bwn_ntab_write(mac, BWN_NTAB16(8, 3), regs[5]);
  bwn_ntab_write(mac, BWN_NTAB16(8, 19), regs[6]);
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC1, regs[7]);
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC2, regs[8]);
  BWN_PHY_WRITE(mac, BWN_NPHY_PAPD_EN0, regs[9]);
  BWN_PHY_WRITE(mac, BWN_NPHY_PAPD_EN1, regs[10]);
  bwn_nphy_reset_cca(mac);
 } else {
  BWN_PHY_SETMASK(mac, BWN_NPHY_AFECTL_C1, 0x0FFF, regs[0]);
  BWN_PHY_SETMASK(mac, BWN_NPHY_AFECTL_C2, 0x0FFF, regs[1]);
  BWN_PHY_WRITE(mac, BWN_NPHY_AFECTL_OVER, regs[2]);
  bwn_ntab_write(mac, BWN_NTAB16(8, 2), regs[3]);
  bwn_ntab_write(mac, BWN_NTAB16(8, 18), regs[4]);
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC1, regs[5]);
  BWN_PHY_WRITE(mac, BWN_NPHY_RFCTL_INTC2, regs[6]);
 }
}

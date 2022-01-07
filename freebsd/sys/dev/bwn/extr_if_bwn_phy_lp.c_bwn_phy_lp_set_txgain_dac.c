
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwn_mac {int dummy; } ;


 int BWN_PHY_AFE_DAC_CTL ;
 int BWN_PHY_READ (struct bwn_mac*,int ) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;

__attribute__((used)) static void
bwn_phy_lp_set_txgain_dac(struct bwn_mac *mac, uint16_t dac)
{
 uint16_t ctl;

 ctl = BWN_PHY_READ(mac, BWN_PHY_AFE_DAC_CTL) & 0xc7f;
 ctl |= dac << 7;
 BWN_PHY_SETMASK(mac, BWN_PHY_AFE_DAC_CTL, 0xf000, ctl);
}

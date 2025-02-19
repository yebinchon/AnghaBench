
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwn_txgain {int tg_pad; int tg_pga; int tg_gm; int tg_dac; } ;
struct TYPE_2__ {int rev; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int BWN_PHY_OFDM (int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int ,int,int) ;
 int BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL ;
 int BWN_PHY_WRITE (struct bwn_mac*,int ,int) ;
 int bwn_phy_lp_get_pa_gain (struct bwn_mac*) ;
 int bwn_phy_lp_set_txgain_dac (struct bwn_mac*,int ) ;
 int bwn_phy_lp_set_txgain_override (struct bwn_mac*) ;

__attribute__((used)) static void
bwn_phy_lp_set_txgain(struct bwn_mac *mac, struct bwn_txgain *tg)
{
 uint16_t pa;

 if (mac->mac_phy.rev < 2) {
  BWN_PHY_SETMASK(mac, BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL, 0xf800,
      (tg->tg_pad << 7) | (tg->tg_pga << 3) | tg->tg_gm);
  bwn_phy_lp_set_txgain_dac(mac, tg->tg_dac);
  bwn_phy_lp_set_txgain_override(mac);
  return;
 }

 pa = bwn_phy_lp_get_pa_gain(mac);
 BWN_PHY_WRITE(mac, BWN_PHY_TX_GAIN_CTL_OVERRIDE_VAL,
     (tg->tg_pga << 8) | tg->tg_gm);
 BWN_PHY_SETMASK(mac, BWN_PHY_OFDM(0xfb), 0x8000,
     tg->tg_pad | (pa << 6));
 BWN_PHY_WRITE(mac, BWN_PHY_OFDM(0xfc), (tg->tg_pga << 8) | tg->tg_gm);
 BWN_PHY_SETMASK(mac, BWN_PHY_OFDM(0xfd), 0x8000,
     tg->tg_pad | (pa << 8));
 bwn_phy_lp_set_txgain_dac(mac, tg->tg_dac);
 bwn_phy_lp_set_txgain_override(mac);
}

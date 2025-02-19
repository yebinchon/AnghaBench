
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_phy {int chan; int rf_ver; int rf_rev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;


 int BHND_BFL_ADCDIV ;
 int bwn_mac_enable (struct bwn_mac*) ;
 int bwn_mac_suspend (struct bwn_mac*) ;
 int bwn_nrssi_slope_11g (struct bwn_mac*) ;
 int bwn_switch_channel (struct bwn_mac*,int) ;

void
bwn_phy_g_task_60s(struct bwn_mac *mac)
{
 struct bwn_phy *phy = &mac->mac_phy;
 struct bwn_softc *sc = mac->mac_sc;
 uint8_t old = phy->chan;

 if (!(sc->sc_board_info.board_flags & BHND_BFL_ADCDIV))
  return;

 bwn_mac_suspend(mac);
 bwn_nrssi_slope_11g(mac);
 if ((phy->rf_ver == 0x2050) && (phy->rf_rev == 8)) {
  bwn_switch_channel(mac, (old >= 8) ? 1 : 13);
  bwn_switch_channel(mac, old);
 }
 bwn_mac_enable(mac);
}

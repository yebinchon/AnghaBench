
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct TYPE_4__ {scalar_t__ type; int gmode; } ;
struct bwn_mac {TYPE_2__ mac_phy; struct bwn_softc* mac_sc; } ;


 int BHND_BFL_BTC2WIRE_ALTGPIO ;
 int BHND_BFL_BTCOEX ;
 int BWN_HF_BT_COEXIST ;
 int BWN_HF_BT_COEXISTALT ;
 scalar_t__ BWN_PHYTYPE_B ;
 scalar_t__ bwn_bluetooth ;
 int bwn_hf_read (struct bwn_mac*) ;
 int bwn_hf_write (struct bwn_mac*,int ) ;

__attribute__((used)) static void
bwn_bt_enable(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 uint64_t hf;

 if (bwn_bluetooth == 0)
  return;
 if ((sc->sc_board_info.board_flags & BHND_BFL_BTCOEX) == 0)
  return;
 if (mac->mac_phy.type != BWN_PHYTYPE_B && !mac->mac_phy.gmode)
  return;

 hf = bwn_hf_read(mac);
 if (sc->sc_board_info.board_flags & BHND_BFL_BTC2WIRE_ALTGPIO)
  hf |= BWN_HF_BT_COEXISTALT;
 else
  hf |= BWN_HF_BT_COEXIST;
 bwn_hf_write(mac, hf);
}

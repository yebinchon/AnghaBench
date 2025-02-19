
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {int rf_rev; int rf_lo_gain; int rf_rx_gain; } ;
struct bwi_phy {int phy_rev; } ;
struct TYPE_2__ {int bbp_atten; } ;
struct bwi_mac {struct bwi_softc* mac_sc; TYPE_1__ mac_tpctl; struct bwi_rf mac_rf; struct bwi_phy mac_phy; } ;


 int BWI_CARD_F_EXT_LNA ;
 int BWI_DBG_INIT ;
 int BWI_DBG_RF ;
 int DELAY (int) ;
 int DPRINTF (struct bwi_softc*,int,char*,int,int) ;
 int PHY_CLRBITS (struct bwi_mac*,int,int) ;
 int PHY_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int PHY_READ (struct bwi_mac*,int const) ;
 int PHY_SETBITS (struct bwi_mac*,int,int) ;
 int PHY_WRITE (struct bwi_mac*,int const,int) ;
 int RF_CLRBITS (struct bwi_mac*,int,int) ;
 int RF_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int RF_READ (struct bwi_mac*,int const) ;
 int RF_WRITE (struct bwi_mac*,int const,int) ;
 int SAVE_PHY_MAX ;
 int SAVE_RF_MAX ;
 int bwi_phy_set_bbp_atten (struct bwi_mac*,int) ;
 scalar_t__ bwi_rf_gain_max_reached (struct bwi_mac*,int) ;

void
bwi_rf_get_gains(struct bwi_mac *mac)
{



 static const uint16_t save_rf_regs[3] =
 { 0x52, 0x43, 0x7a };
 static const uint16_t save_phy_regs[15] = {
  0x0429, 0x0001, 0x0811, 0x0812,
  0x0814, 0x0815, 0x005a, 0x0059,
  0x0058, 0x000a, 0x0003, 0x080f,
  0x0810, 0x002b, 0x0015
 };

 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_phy *phy = &mac->mac_phy;
 struct bwi_rf *rf = &mac->mac_rf;
 uint16_t save_phy[15];
 uint16_t save_rf[3];
 uint16_t trsw;
 int i, j, loop1_max, loop1, loop2;




 for (i = 0; i < 15; ++i)
  save_phy[i] = PHY_READ(mac, save_phy_regs[i]);
 PHY_READ(mac, 0x2d);

 for (i = 0; i < 3; ++i)
  save_rf[i] = RF_READ(mac, save_rf_regs[i]);

 PHY_CLRBITS(mac, 0x429, 0xc000);
 PHY_SETBITS(mac, 0x1, 0x8000);

 PHY_SETBITS(mac, 0x811, 0x2);
 PHY_CLRBITS(mac, 0x812, 0x2);
 PHY_SETBITS(mac, 0x811, 0x1);
 PHY_CLRBITS(mac, 0x812, 0x1);

 PHY_SETBITS(mac, 0x814, 0x1);
 PHY_CLRBITS(mac, 0x815, 0x1);
 PHY_SETBITS(mac, 0x814, 0x2);
 PHY_CLRBITS(mac, 0x815, 0x2);

 PHY_SETBITS(mac, 0x811, 0xc);
 PHY_SETBITS(mac, 0x812, 0xc);
 PHY_SETBITS(mac, 0x811, 0x30);
 PHY_FILT_SETBITS(mac, 0x812, 0xffcf, 0x10);

 PHY_WRITE(mac, 0x5a, 0x780);
 PHY_WRITE(mac, 0x59, 0xc810);
 PHY_WRITE(mac, 0x58, 0xd);
 PHY_SETBITS(mac, 0xa, 0x2000);

 PHY_SETBITS(mac, 0x814, 0x4);
 PHY_CLRBITS(mac, 0x815, 0x4);

 PHY_FILT_SETBITS(mac, 0x3, 0xff9f, 0x40);

 if (rf->rf_rev == 8) {
  loop1_max = 15;
  RF_WRITE(mac, 0x43, loop1_max);
 } else {
  loop1_max = 9;
      RF_WRITE(mac, 0x52, 0x0);
  RF_FILT_SETBITS(mac, 0x43, 0xfff0, loop1_max);
 }

 bwi_phy_set_bbp_atten(mac, 11);

 if (phy->phy_rev >= 3)
  PHY_WRITE(mac, 0x80f, 0xc020);
 else
  PHY_WRITE(mac, 0x80f, 0x8020);
 PHY_WRITE(mac, 0x810, 0);

 PHY_FILT_SETBITS(mac, 0x2b, 0xffc0, 0x1);
 PHY_FILT_SETBITS(mac, 0x2b, 0xc0ff, 0x800);
 PHY_SETBITS(mac, 0x811, 0x100);
 PHY_CLRBITS(mac, 0x812, 0x3000);

 if ((sc->sc_card_flags & BWI_CARD_F_EXT_LNA) &&
     phy->phy_rev >= 7) {
  PHY_SETBITS(mac, 0x811, 0x800);
  PHY_SETBITS(mac, 0x812, 0x8000);
 }
 RF_CLRBITS(mac, 0x7a, 0xff08);





 j = 0;
 for (i = 0; i < loop1_max; ++i) {
  for (j = 0; j < 16; ++j) {
   RF_WRITE(mac, 0x43, i);

   if (bwi_rf_gain_max_reached(mac, j))
    goto loop1_exit;
  }
 }
loop1_exit:
 loop1 = i;
 loop2 = j;





 if (loop2 >= 8) {
  PHY_SETBITS(mac, 0x812, 0x30);
  trsw = 0x1b;
  for (i = loop2 - 8; i < 16; ++i) {
   trsw -= 3;
   if (bwi_rf_gain_max_reached(mac, i))
    break;
  }
 } else {
  trsw = 0x18;
 }





 for (i = 4; i < 15; ++i)
  PHY_WRITE(mac, save_phy_regs[i], save_phy[i]);

 bwi_phy_set_bbp_atten(mac, mac->mac_tpctl.bbp_atten);

 for (i = 0; i < 3; ++i)
  RF_WRITE(mac, save_rf_regs[i], save_rf[i]);

 PHY_WRITE(mac, save_phy_regs[2], save_phy[2] | 0x3);
 DELAY(10);
 PHY_WRITE(mac, save_phy_regs[2], save_phy[2]);
 PHY_WRITE(mac, save_phy_regs[3], save_phy[3]);
 PHY_WRITE(mac, save_phy_regs[0], save_phy[0]);
 PHY_WRITE(mac, save_phy_regs[1], save_phy[1]);




 rf->rf_lo_gain = (loop2 * 6) - (loop1 * 4) - 11;
 rf->rf_rx_gain = trsw * 2;
 DPRINTF(mac->mac_sc, BWI_DBG_RF | BWI_DBG_INIT,
  "lo gain: %u, rx gain: %u\n",
  rf->rf_lo_gain, rf->rf_rx_gain);



}

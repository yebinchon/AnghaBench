
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {int rf_rev; int rf_calib; int rf_curchan; int rf_flags; } ;
struct bwi_phy {scalar_t__ phy_mode; int phy_flags; int phy_rev; int phy_version; } ;
struct bwi_mac {struct bwi_rf mac_rf; struct bwi_phy mac_phy; struct bwi_softc* mac_sc; } ;


 int BWI_BBP_ATTEN ;
 int BWI_BPHY_CTRL ;
 int BWI_CARD_F_EXT_LNA ;
 int BWI_DBG_INIT ;
 int BWI_DBG_RF ;
 int BWI_PHY_F_LINKED ;
 int BWI_RF_ANTDIV ;
 int BWI_RF_CHAN_EX ;
 int BWI_RF_F_INITED ;
 int CSR_CLRBITS_2 (struct bwi_softc*,int ,int) ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_SETBITS_2 (struct bwi_softc*,int ,int) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int) ;
 int DELAY (int) ;
 int DPRINTF (struct bwi_softc*,int,char*,int) ;
 scalar_t__ IEEE80211_MODE_11B ;
 int PHY_CLRBITS (struct bwi_mac*,int,int) ;
 int PHY_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int PHY_READ (struct bwi_mac*,int const) ;
 int PHY_SETBITS (struct bwi_mac*,int,int) ;
 int PHY_WRITE (struct bwi_mac*,int const,int) ;
 int RF_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int RF_READ (struct bwi_mac*,int const) ;
 int RF_SETBITS (struct bwi_mac*,int,int) ;
 int RF_WRITE (struct bwi_mac*,int const,int) ;
 int SAVE_PHY_11G_MAX ;
 int SAVE_PHY_COMM_MAX ;
 int SAVE_RF_MAX ;
 int bitswap4 (int) ;
 int bwi_phy812_value (struct bwi_mac*,int) ;
 int bwi_rf_calibval (struct bwi_mac*) ;
 int bwi_rf_work_around (struct bwi_mac*,int ) ;

void
bwi_rf_init_bcm2050(struct bwi_mac *mac)
{




 static const uint16_t save_rf_regs[3] =
 { 0x0043, 0x0051, 0x0052 };
 static const uint16_t save_phy_regs_comm[4] =
 { 0x0015, 0x005a, 0x0059, 0x0058 };
 static const uint16_t save_phy_regs_11g[6] =
 { 0x0811, 0x0812, 0x0814, 0x0815, 0x0429, 0x0802 };

 uint16_t save_rf[3];
 uint16_t save_phy_comm[4];
 uint16_t save_phy_11g[6];
 uint16_t phyr_35, phyr_30 = 0, rfr_78, phyr_80f = 0, phyr_810 = 0;
 uint16_t bphy_ctrl = 0, bbp_atten, rf_chan_ex;
 uint16_t phy812_val;
 uint16_t calib;
 uint32_t test_lim, test;
 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_phy *phy = &mac->mac_phy;
 struct bwi_rf *rf = &mac->mac_rf;
 int i;




 for (i = 0; i < 3; ++i)
  save_rf[i] = RF_READ(mac, save_rf_regs[i]);
 for (i = 0; i < 4; ++i)
  save_phy_comm[i] = PHY_READ(mac, save_phy_regs_comm[i]);

 if (phy->phy_mode == IEEE80211_MODE_11B) {
  phyr_30 = PHY_READ(mac, 0x30);
  bphy_ctrl = CSR_READ_2(sc, BWI_BPHY_CTRL);

  PHY_WRITE(mac, 0x30, 0xff);
  CSR_WRITE_2(sc, BWI_BPHY_CTRL, 0x3f3f);
 } else if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
  for (i = 0; i < 6; ++i) {
   save_phy_11g[i] =
    PHY_READ(mac, save_phy_regs_11g[i]);
  }

  PHY_SETBITS(mac, 0x814, 0x3);
  PHY_CLRBITS(mac, 0x815, 0x3);
  PHY_CLRBITS(mac, 0x429, 0x8000);
  PHY_CLRBITS(mac, 0x802, 0x3);

  phyr_80f = PHY_READ(mac, 0x80f);
  phyr_810 = PHY_READ(mac, 0x810);

  if (phy->phy_rev >= 3)
   PHY_WRITE(mac, 0x80f, 0xc020);
  else
   PHY_WRITE(mac, 0x80f, 0x8020);
  PHY_WRITE(mac, 0x810, 0);

  phy812_val = bwi_phy812_value(mac, 0x011);
  PHY_WRITE(mac, 0x812, phy812_val);
  if (phy->phy_rev < 7 ||
      (sc->sc_card_flags & BWI_CARD_F_EXT_LNA) == 0)
   PHY_WRITE(mac, 0x811, 0x1b3);
  else
   PHY_WRITE(mac, 0x811, 0x9b3);
 }
 CSR_SETBITS_2(sc, BWI_RF_ANTDIV, 0x8000);

 phyr_35 = PHY_READ(mac, 0x35);
 PHY_CLRBITS(mac, 0x35, 0x80);

 bbp_atten = CSR_READ_2(sc, BWI_BBP_ATTEN);
 rf_chan_ex = CSR_READ_2(sc, BWI_RF_CHAN_EX);

 if (phy->phy_version == 0) {
  CSR_WRITE_2(sc, BWI_BBP_ATTEN, 0x122);
 } else {
  if (phy->phy_version >= 2)
   PHY_FILT_SETBITS(mac, 0x3, 0xffbf, 0x40);
  CSR_SETBITS_2(sc, BWI_RF_CHAN_EX, 0x2000);
 }

 calib = bwi_rf_calibval(mac);

 if (phy->phy_mode == IEEE80211_MODE_11B)
  RF_WRITE(mac, 0x78, 0x26);

 if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
  phy812_val = bwi_phy812_value(mac, 0x011);
  PHY_WRITE(mac, 0x812, phy812_val);
 }

 PHY_WRITE(mac, 0x15, 0xbfaf);
 PHY_WRITE(mac, 0x2b, 0x1403);

 if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
  phy812_val = bwi_phy812_value(mac, 0x001);
  PHY_WRITE(mac, 0x812, phy812_val);
 }

 PHY_WRITE(mac, 0x15, 0xbfa0);

 RF_SETBITS(mac, 0x51, 0x4);
 if (rf->rf_rev == 8) {
  RF_WRITE(mac, 0x43, 0x1f);
 } else {
  RF_WRITE(mac, 0x52, 0);
  RF_FILT_SETBITS(mac, 0x43, 0xfff0, 0x9);
 }

 test_lim = 0;
 PHY_WRITE(mac, 0x58, 0);
 for (i = 0; i < 16; ++i) {
  PHY_WRITE(mac, 0x5a, 0x480);
  PHY_WRITE(mac, 0x59, 0xc810);

  PHY_WRITE(mac, 0x58, 0xd);
  if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
   phy812_val = bwi_phy812_value(mac, 0x101);
   PHY_WRITE(mac, 0x812, phy812_val);
  }
  PHY_WRITE(mac, 0x15, 0xafb0);
  DELAY(10);

  if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
   phy812_val = bwi_phy812_value(mac, 0x101);
   PHY_WRITE(mac, 0x812, phy812_val);
  }
  PHY_WRITE(mac, 0x15, 0xefb0);
  DELAY(10);

  if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
   phy812_val = bwi_phy812_value(mac, 0x100);
   PHY_WRITE(mac, 0x812, phy812_val);
  }
  PHY_WRITE(mac, 0x15, 0xfff0);
  DELAY(20);

  test_lim += PHY_READ(mac, 0x2d);

  PHY_WRITE(mac, 0x58, 0);
  if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {
   phy812_val = bwi_phy812_value(mac, 0x101);
   PHY_WRITE(mac, 0x812, phy812_val);
  }
  PHY_WRITE(mac, 0x15, 0xafb0);
 }
 ++test_lim;
 test_lim >>= 9;

 DELAY(10);

 test = 0;
 PHY_WRITE(mac, 0x58, 0);
 for (i = 0; i < 16; ++i) {
  int j;

  rfr_78 = (bitswap4(i) << 1) | 0x20;
  RF_WRITE(mac, 0x78, rfr_78);
  DELAY(10);


  for (j = 0; j < 16; ++j) {
   PHY_WRITE(mac, 0x5a, 0xd80);
   PHY_WRITE(mac, 0x59, 0xc810);

   PHY_WRITE(mac, 0x58, 0xd);
   if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
       phy->phy_rev >= 2) {
    phy812_val = bwi_phy812_value(mac, 0x101);
    PHY_WRITE(mac, 0x812, phy812_val);
   }
   PHY_WRITE(mac, 0x15, 0xafb0);
   DELAY(10);

   if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
       phy->phy_rev >= 2) {
    phy812_val = bwi_phy812_value(mac, 0x101);
    PHY_WRITE(mac, 0x812, phy812_val);
   }
   PHY_WRITE(mac, 0x15, 0xefb0);
   DELAY(10);

   if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
       phy->phy_rev >= 2) {
    phy812_val = bwi_phy812_value(mac, 0x100);
    PHY_WRITE(mac, 0x812, phy812_val);
   }
   PHY_WRITE(mac, 0x15, 0xfff0);
   DELAY(10);

   test += PHY_READ(mac, 0x2d);

   PHY_WRITE(mac, 0x58, 0);
   if ((phy->phy_flags & BWI_PHY_F_LINKED) ||
       phy->phy_rev >= 2) {
    phy812_val = bwi_phy812_value(mac, 0x101);
    PHY_WRITE(mac, 0x812, phy812_val);
   }
   PHY_WRITE(mac, 0x15, 0xafb0);
  }

  ++test;
  test >>= 8;

  if (test > test_lim)
   break;
 }
 if (i > 15)
  rf->rf_calib = rfr_78;
 else
  rf->rf_calib = calib;
 if (rf->rf_calib != 0xffff) {
  DPRINTF(sc, BWI_DBG_RF | BWI_DBG_INIT,
   "RF calibration value: 0x%04x\n", rf->rf_calib);
  rf->rf_flags |= BWI_RF_F_INITED;
 }




 PHY_WRITE(mac, save_phy_regs_comm[0], save_phy_comm[0]);

 for (i = 0; i < 3; ++i) {
  int pos = (i + 1) % 3;

  RF_WRITE(mac, save_rf_regs[pos], save_rf[pos]);
 }
 for (i = 1; i < 4; ++i)
  PHY_WRITE(mac, save_phy_regs_comm[i], save_phy_comm[i]);

 CSR_WRITE_2(sc, BWI_BBP_ATTEN, bbp_atten);
 if (phy->phy_version != 0)
  CSR_WRITE_2(sc, BWI_RF_CHAN_EX, rf_chan_ex);

 PHY_WRITE(mac, 0x35, phyr_35);
 bwi_rf_work_around(mac, rf->rf_curchan);

 if (phy->phy_mode == IEEE80211_MODE_11B) {
  PHY_WRITE(mac, 0x30, phyr_30);
  CSR_WRITE_2(sc, BWI_BPHY_CTRL, bphy_ctrl);
 } else if ((phy->phy_flags & BWI_PHY_F_LINKED) || phy->phy_rev >= 2) {

  CSR_CLRBITS_2(sc, BWI_RF_ANTDIV, 0x8000);

  for (i = 0; i < 6; ++i) {
   PHY_WRITE(mac, save_phy_regs_11g[i],
      save_phy_11g[i]);
  }

  PHY_WRITE(mac, 0x80f, phyr_80f);
  PHY_WRITE(mac, 0x810, phyr_810);
 }




}

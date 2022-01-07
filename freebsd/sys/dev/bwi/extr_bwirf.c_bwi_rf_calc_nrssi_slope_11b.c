
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_rf {int rf_nrssi_slope; int* rf_nrssi; int rf_curchan; } ;
struct bwi_phy {int phy_rev; int phy_version; } ;
struct bwi_mac {struct bwi_phy mac_phy; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;
typedef int int16_t ;


 int BWI_BBP_ATTEN ;
 int BWI_BPHY_CTRL ;
 int BWI_RF_ANTDIV ;
 int BWI_RF_CHAN_EX ;
 int CSR_CLRBITS_2 (struct bwi_softc*,int ,int) ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_WRITE_2 (struct bwi_softc*,int ,int) ;
 int DELAY (int) ;
 int PHY_READ (struct bwi_mac*,int const) ;
 int PHY_SETBITS (struct bwi_mac*,int,int) ;
 int PHY_WRITE (struct bwi_mac*,int const,int) ;
 int RF_CLRBITS (struct bwi_mac*,int,int) ;
 int RF_READ (struct bwi_mac*,int const) ;
 int RF_SETBITS (struct bwi_mac*,int,int) ;
 int RF_WRITE (struct bwi_mac*,int const,int) ;
 int SAVE_PHY_MAX ;
 int SAVE_RF_MAX ;
 int bwi_rf_work_around (struct bwi_mac*,int ) ;

__attribute__((used)) static void
bwi_rf_calc_nrssi_slope_11b(struct bwi_mac *mac)
{



 static const uint16_t save_rf_regs[3] =
 { 0x7a, 0x52, 0x43 };
 static const uint16_t save_phy_regs[8] =
 { 0x30, 0x26, 0x15, 0x2a, 0x20, 0x5a, 0x59, 0x58 };

 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_rf *rf = &mac->mac_rf;
 struct bwi_phy *phy = &mac->mac_phy;
 uint16_t save_rf[3];
 uint16_t save_phy[8];
 uint16_t ant_div, bbp_atten, chan_ex;
 int16_t nrssi[2];
 int i;




 for (i = 0; i < 3; ++i)
  save_rf[i] = RF_READ(mac, save_rf_regs[i]);
 for (i = 0; i < 8; ++i)
  save_phy[i] = PHY_READ(mac, save_phy_regs[i]);

 ant_div = CSR_READ_2(sc, BWI_RF_ANTDIV);
 bbp_atten = CSR_READ_2(sc, BWI_BBP_ATTEN);
 chan_ex = CSR_READ_2(sc, BWI_RF_CHAN_EX);




 if (phy->phy_rev >= 5)
  RF_CLRBITS(mac, 0x7a, 0xff80);
 else
  RF_CLRBITS(mac, 0x7a, 0xfff0);
 PHY_WRITE(mac, 0x30, 0xff);

 CSR_WRITE_2(sc, BWI_BPHY_CTRL, 0x7f7f);

 PHY_WRITE(mac, 0x26, 0);
 PHY_SETBITS(mac, 0x15, 0x20);
 PHY_WRITE(mac, 0x2a, 0x8a3);
 RF_SETBITS(mac, 0x7a, 0x80);

 nrssi[0] = (int16_t)PHY_READ(mac, 0x27);




 RF_CLRBITS(mac, 0x7a, 0xff80);
 if (phy->phy_version >= 2)
  CSR_WRITE_2(sc, BWI_BBP_ATTEN, 0x40);
 else if (phy->phy_version == 0)
  CSR_WRITE_2(sc, BWI_BBP_ATTEN, 0x122);
 else
  CSR_CLRBITS_2(sc, BWI_RF_CHAN_EX, 0xdfff);

 PHY_WRITE(mac, 0x20, 0x3f3f);
 PHY_WRITE(mac, 0x15, 0xf330);

 RF_WRITE(mac, 0x5a, 0x60);
 RF_CLRBITS(mac, 0x43, 0xff0f);

 PHY_WRITE(mac, 0x5a, 0x480);
 PHY_WRITE(mac, 0x59, 0x810);
 PHY_WRITE(mac, 0x58, 0xd);

 DELAY(20);

 nrssi[1] = (int16_t)PHY_READ(mac, 0x27);




 PHY_WRITE(mac, save_phy_regs[0], save_phy[0]);
 RF_WRITE(mac, save_rf_regs[0], save_rf[0]);

 CSR_WRITE_2(sc, BWI_RF_ANTDIV, ant_div);

 for (i = 1; i < 4; ++i)
  PHY_WRITE(mac, save_phy_regs[i], save_phy[i]);

 bwi_rf_work_around(mac, rf->rf_curchan);

 if (phy->phy_version != 0)
  CSR_WRITE_2(sc, BWI_RF_CHAN_EX, chan_ex);

 for (; i < 8; ++i)
  PHY_WRITE(mac, save_phy_regs[i], save_phy[i]);

 for (i = 1; i < 3; ++i)
  RF_WRITE(mac, save_rf_regs[i], save_rf[i]);




 if (nrssi[0] == nrssi[1])
  rf->rf_nrssi_slope = 0x10000;
 else
  rf->rf_nrssi_slope = 0x400000 / (nrssi[0] - nrssi[1]);
 if (nrssi[0] <= -4) {
  rf->rf_nrssi[0] = nrssi[0];
  rf->rf_nrssi[1] = nrssi[1];
 }



}

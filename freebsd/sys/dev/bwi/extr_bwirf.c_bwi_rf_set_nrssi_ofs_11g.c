
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct bwi_phy {int phy_rev; scalar_t__ phy_version; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;
struct bwi_gains {int tbl_gain1; int phy_gain; scalar_t__ tbl_gain2; } ;
typedef int int16_t ;
typedef int gains ;


 int DELAY (int) ;
 int PHY_CLRBITS (struct bwi_mac*,int,int) ;
 int PHY_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int PHY_READ (struct bwi_mac*,int const) ;
 int PHY_SETBITS (struct bwi_mac*,int,int) ;
 int PHY_WRITE (struct bwi_mac*,int const,int) ;
 int RF_CLRBITS (struct bwi_mac*,int,int) ;
 int RF_FILT_SETBITS (struct bwi_mac*,int,int,int) ;
 int RF_READ (struct bwi_mac*,int const) ;
 int RF_SETBITS (struct bwi_mac*,int,int) ;
 int RF_WRITE (struct bwi_mac*,int const,int) ;
 int SAVE_PHY6_MAX ;
 int SAVE_PHY_COMM_MAX ;
 int SAVE_RF_MAX ;
 int bwi_nrssi_11g (struct bwi_mac*) ;
 int bwi_set_gains (struct bwi_mac*,struct bwi_gains*) ;
 int bzero (struct bwi_gains*,int) ;

__attribute__((used)) static void
bwi_rf_set_nrssi_ofs_11g(struct bwi_mac *mac)
{




 static const uint16_t save_rf_regs[2] =
 { 0x7a, 0x43 };
 static const uint16_t save_phy_comm_regs[10] = {
  0x0001, 0x0811, 0x0812, 0x0814,
  0x0815, 0x005a, 0x0059, 0x0058,
  0x000a, 0x0003
 };
 static const uint16_t save_phy6_regs[8] = {
  0x002e, 0x002f, 0x080f, 0x0810,
  0x0801, 0x0060, 0x0014, 0x0478
 };

 struct bwi_phy *phy = &mac->mac_phy;
 uint16_t save_rf[2];
 uint16_t save_phy_comm[10];
 uint16_t save_phy6[8];
 uint16_t rf7b = 0xffff;
 int16_t nrssi;
 int i, phy6_idx = 0;

 for (i = 0; i < 10; ++i)
  save_phy_comm[i] = PHY_READ(mac, save_phy_comm_regs[i]);
 for (i = 0; i < 2; ++i)
  save_rf[i] = RF_READ(mac, save_rf_regs[i]);

 PHY_CLRBITS(mac, 0x429, 0x8000);
 PHY_FILT_SETBITS(mac, 0x1, 0x3fff, 0x4000);
 PHY_SETBITS(mac, 0x811, 0xc);
 PHY_FILT_SETBITS(mac, 0x812, 0xfff3, 0x4);
 PHY_CLRBITS(mac, 0x802, 0x3);

 if (phy->phy_rev >= 6) {
  for (i = 0; i < 8; ++i)
   save_phy6[i] = PHY_READ(mac, save_phy6_regs[i]);

  PHY_WRITE(mac, 0x2e, 0);
  PHY_WRITE(mac, 0x2f, 0);
  PHY_WRITE(mac, 0x80f, 0);
  PHY_WRITE(mac, 0x810, 0);
  PHY_SETBITS(mac, 0x478, 0x100);
  PHY_SETBITS(mac, 0x801, 0x40);
  PHY_SETBITS(mac, 0x60, 0x40);
  PHY_SETBITS(mac, 0x14, 0x200);
 }

 RF_SETBITS(mac, 0x7a, 0x70);
 RF_SETBITS(mac, 0x7a, 0x80);

 DELAY(30);

 nrssi = bwi_nrssi_11g(mac);
 if (nrssi == 31) {
  for (i = 7; i >= 4; --i) {
   RF_WRITE(mac, 0x7b, i);
   DELAY(20);
   nrssi = bwi_nrssi_11g(mac);
   if (nrssi < 31 && rf7b == 0xffff)
    rf7b = i;
  }
  if (rf7b == 0xffff)
   rf7b = 4;
 } else {
  struct bwi_gains gains;

  RF_CLRBITS(mac, 0x7a, 0xff80);

  PHY_SETBITS(mac, 0x814, 0x1);
  PHY_CLRBITS(mac, 0x815, 0x1);
  PHY_SETBITS(mac, 0x811, 0xc);
  PHY_SETBITS(mac, 0x812, 0xc);
  PHY_SETBITS(mac, 0x811, 0x30);
  PHY_SETBITS(mac, 0x812, 0x30);
  PHY_WRITE(mac, 0x5a, 0x480);
  PHY_WRITE(mac, 0x59, 0x810);
  PHY_WRITE(mac, 0x58, 0xd);
  if (phy->phy_version == 0)
   PHY_WRITE(mac, 0x3, 0x122);
  else
   PHY_SETBITS(mac, 0xa, 0x2000);
  PHY_SETBITS(mac, 0x814, 0x4);
  PHY_CLRBITS(mac, 0x815, 0x4);
  PHY_FILT_SETBITS(mac, 0x3, 0xff9f, 0x40);
  RF_SETBITS(mac, 0x7a, 0xf);

  bzero(&gains, sizeof(gains));
  gains.tbl_gain1 = 3;
  gains.tbl_gain2 = 0;
  gains.phy_gain = 1;
  bwi_set_gains(mac, &gains);

  RF_FILT_SETBITS(mac, 0x43, 0xf0, 0xf);
  DELAY(30);

  nrssi = bwi_nrssi_11g(mac);
  if (nrssi == -32) {
   for (i = 0; i < 4; ++i) {
    RF_WRITE(mac, 0x7b, i);
    DELAY(20);
    nrssi = bwi_nrssi_11g(mac);
    if (nrssi > -31 && rf7b == 0xffff)
     rf7b = i;
   }
   if (rf7b == 0xffff)
    rf7b = 3;
  } else {
   rf7b = 0;
  }
 }
 RF_WRITE(mac, 0x7b, rf7b);




 if (phy->phy_rev >= 6) {
  for (phy6_idx = 0; phy6_idx < 4; ++phy6_idx) {
   PHY_WRITE(mac, save_phy6_regs[phy6_idx],
      save_phy6[phy6_idx]);
  }
 }


 for (i = 3; i < 10; ++i)
  PHY_WRITE(mac, save_phy_comm_regs[i], save_phy_comm[i]);

 for (i = 2 - 1; i >= 0; --i)
  RF_WRITE(mac, save_rf_regs[i], save_rf[i]);

 PHY_SETBITS(mac, 0x802, 0x3);
 PHY_SETBITS(mac, 0x429, 0x8000);

 bwi_set_gains(mac, ((void*)0));

 if (phy->phy_rev >= 6) {
  for (; phy6_idx < 8; ++phy6_idx) {
   PHY_WRITE(mac, save_phy6_regs[phy6_idx],
      save_phy6[phy6_idx]);
  }
 }

 PHY_WRITE(mac, save_phy_comm_regs[0], save_phy_comm[0]);
 PHY_WRITE(mac, save_phy_comm_regs[2], save_phy_comm[2]);
 PHY_WRITE(mac, save_phy_comm_regs[1], save_phy_comm[1]);




}

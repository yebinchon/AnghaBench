
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct bwn_mac {int dummy; } ;
typedef enum n_intc_override { ____Placeholder_n_intc_override } n_intc_override ;


 int BWN_BAND_5G ;
 int BWN_NPHY_RFCTL_INTC1 ;
 int BWN_NPHY_RFCTL_INTC2 ;
 int BWN_PHY_MASK (struct bwn_mac*,int,int) ;
 int BWN_PHY_SET (struct bwn_mac*,int,int) ;
 int BWN_PHY_SETMASK (struct bwn_mac*,int,int,int) ;
 int BWN_PHY_WRITE (struct bwn_mac*,int,int ) ;
 int BWN_RFSEQ_RESET2RX ;





 int bwn_current_band (struct bwn_mac*) ;
 int bwn_nphy_force_rf_sequence (struct bwn_mac*,int ) ;

__attribute__((used)) static void bwn_nphy_rf_ctl_intc_override_rev7(struct bwn_mac *mac,
            enum n_intc_override intc_override,
            uint16_t value, uint8_t core_sel)
{
 uint16_t reg, tmp, tmp2, val;
 int core;



 for (core = 0; core < 2; core++) {
  if ((core_sel == 1 && core != 0) ||
      (core_sel == 2 && core != 1))
   continue;

  reg = (core == 0) ? BWN_NPHY_RFCTL_INTC1 : BWN_NPHY_RFCTL_INTC2;

  switch (intc_override) {
  case 130:
   BWN_PHY_WRITE(mac, reg, 0);
   BWN_PHY_MASK(mac, 0x2ff, ~0x2000);
   bwn_nphy_force_rf_sequence(mac, BWN_RFSEQ_RESET2RX);
   break;
  case 128:
   BWN_PHY_SETMASK(mac, reg, ~0xC0, value << 6);
   BWN_PHY_SET(mac, reg, 0x400);

   BWN_PHY_MASK(mac, 0x2ff, ~0xC000 & 0xFFFF);
   BWN_PHY_SET(mac, 0x2ff, 0x2000);
   BWN_PHY_SET(mac, 0x2ff, 0x0001);
   break;
  case 129:
   tmp = 0x0030;
   if (bwn_current_band(mac) == BWN_BAND_5G)
    val = value << 5;
   else
    val = value << 4;
   BWN_PHY_SETMASK(mac, reg, ~tmp, val);
   BWN_PHY_SET(mac, reg, 0x1000);
   break;
  case 131:
   if (bwn_current_band(mac) == BWN_BAND_5G) {
    tmp = 0x0001;
    tmp2 = 0x0004;
    val = value;
   } else {
    tmp = 0x0004;
    tmp2 = 0x0001;
    val = value << 2;
   }
   BWN_PHY_SETMASK(mac, reg, ~tmp, val);
   BWN_PHY_MASK(mac, reg, ~tmp2);
   break;
  case 132:
   if (bwn_current_band(mac) == BWN_BAND_5G) {
    tmp = 0x0002;
    tmp2 = 0x0008;
    val = value << 1;
   } else {
    tmp = 0x0008;
    tmp2 = 0x0002;
    val = value << 3;
   }
   BWN_PHY_SETMASK(mac, reg, ~tmp, val);
   BWN_PHY_MASK(mac, reg, ~tmp2);
   break;
  }
 }
}

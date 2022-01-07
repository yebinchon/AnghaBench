
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int phy_flags; } ;
struct bwi_mac {int mac_rf; TYPE_2__* mac_sc; TYPE_1__ mac_phy; } ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_4__ {int sc_card_flags; } ;


 int BWI_CARD_F_SW_NRSSI ;
 int BWI_PHYR_NRSSI_THR_11G ;
 int BWI_PHY_F_LINKED ;
 int NRSSI_THR1_MASK ;
 int NRSSI_THR2_MASK ;
 int PHY_FILT_SETBITS (struct bwi_mac*,int ,int,int) ;
 int __SHIFTIN (int ,int ) ;
 int _nrssi_threshold (int *,int) ;
 int bwi_nrssi_read (struct bwi_mac*,int) ;

__attribute__((used)) static void
bwi_rf_set_nrssi_thr_11g(struct bwi_mac *mac)
{
 int32_t thr1, thr2;
 uint16_t thr;




 if ((mac->mac_phy.phy_flags & BWI_PHY_F_LINKED) == 0 ||
     (mac->mac_sc->sc_card_flags & BWI_CARD_F_SW_NRSSI) == 0) {
      int16_t nrssi;

  nrssi = bwi_nrssi_read(mac, 0x20);
  if (nrssi >= 32)
   nrssi -= 64;

  if (nrssi < 3) {
   thr1 = 0x2b;
   thr2 = 0x27;
  } else {
   thr1 = 0x2d;
   thr2 = 0x2b;
  }
 } else {

  thr1 = _nrssi_threshold(&mac->mac_rf, 0x11);
  thr2 = _nrssi_threshold(&mac->mac_rf, 0xe);
 }




 thr = __SHIFTIN((uint32_t)thr1, __BITS(5, 0)) |
       __SHIFTIN((uint32_t)thr2, __BITS(11, 6));
 PHY_FILT_SETBITS(mac, BWI_PHYR_NRSSI_THR_11G, 0xf000, thr);



}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct bwi_softc {int sc_flags; } ;
struct bwi_rf_lo {int dummy; } ;
struct TYPE_2__ {int tp_ctrl2; } ;
struct bwi_mac {TYPE_1__ mac_tpctl; struct bwi_softc* mac_sc; } ;
typedef int lo_save ;


 int BBP_ATTEN_MAX ;
 int BWI_F_RUNNING ;
 int BWI_RFR_ATTEN ;
 int BWI_RFR_TXPWR ;
 int DELAY (int) ;
 int RF_ATTEN_LISTSZ ;
 int RF_WRITE (struct bwi_mac*,int,int) ;
 int bcopy (struct bwi_rf_lo*,struct bwi_rf_lo*,int) ;
 struct bwi_rf_lo* bwi_get_rf_lo (struct bwi_mac*,int const,int) ;
 int bwi_phy_set_bbp_atten (struct bwi_mac*,int) ;
 int bwi_rf_lo_isused (struct bwi_mac*,struct bwi_rf_lo*) ;
 int bwi_rf_lo_measure_11g (struct bwi_mac*,struct bwi_rf_lo*,struct bwi_rf_lo*,int) ;
 int bzero (struct bwi_rf_lo*,int) ;

__attribute__((used)) static uint8_t
_bwi_rf_lo_update_11g(struct bwi_mac *mac, uint16_t orig_rf7a)
{



 static const int rf_atten_list[14] =
 { 3, 1, 5, 7, 9, 2, 0, 4, 6, 8, 1, 2, 3, 4 };
 static const int rf_atten_init_list[14] =
        { 0, 3, 1, 5, 7, 3, 2, 0, 4, 6, -1, -1, -1, -1 };
 static const int rf_lo_measure_order[14] =
 { 3, 1, 5, 7, 9, 2, 0, 4, 6, 8, 10, 11, 12, 13 };

 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_rf_lo lo_save, *lo;
 uint8_t devi_ctrl = 0;
 int idx, adj_rf7a = 0;

 bzero(&lo_save, sizeof(lo_save));
 for (idx = 0; idx < 14; ++idx) {
  int init_rf_atten = rf_atten_init_list[idx];
  int rf_atten = rf_atten_list[idx];
  int bbp_atten;

  for (bbp_atten = 0; bbp_atten < 4; ++bbp_atten) {
   uint16_t tp_ctrl2, rf7a;

   if ((sc->sc_flags & BWI_F_RUNNING) == 0) {
    if (idx == 0) {
     bzero(&lo_save, sizeof(lo_save));
    } else if (init_rf_atten < 0) {
     lo = bwi_get_rf_lo(mac,
      rf_atten, 2 * bbp_atten);
     bcopy(lo, &lo_save, sizeof(lo_save));
    } else {
     lo = bwi_get_rf_lo(mac,
      init_rf_atten, 0);
     bcopy(lo, &lo_save, sizeof(lo_save));
    }

    devi_ctrl = 0;
    adj_rf7a = 0;





    if (init_rf_atten >= 0) {
     int val;

     val = rf_atten * 2 + bbp_atten;
     if (val > 14) {
      adj_rf7a = 1;
      if (val > 17)
       devi_ctrl = 1;
      if (val > 19)
       devi_ctrl = 2;
     }
    }
   } else {
    lo = bwi_get_rf_lo(mac,
     rf_atten, 2 * bbp_atten);
    if (!bwi_rf_lo_isused(mac, lo))
     continue;
    bcopy(lo, &lo_save, sizeof(lo_save));

    devi_ctrl = 3;
    adj_rf7a = 0;
   }

   RF_WRITE(mac, BWI_RFR_ATTEN, rf_atten);

   tp_ctrl2 = mac->mac_tpctl.tp_ctrl2;
   if (init_rf_atten < 0)
    tp_ctrl2 |= (3 << 4);
   RF_WRITE(mac, BWI_RFR_TXPWR, tp_ctrl2);

   DELAY(10);

   bwi_phy_set_bbp_atten(mac, bbp_atten * 2);

   rf7a = orig_rf7a & 0xfff0;
   if (adj_rf7a)
    rf7a |= 0x8;
   RF_WRITE(mac, 0x7a, rf7a);

   lo = bwi_get_rf_lo(mac,
    rf_lo_measure_order[idx], bbp_atten * 2);
   bwi_rf_lo_measure_11g(mac, &lo_save, lo, devi_ctrl);
  }
 }
 return devi_ctrl;



}

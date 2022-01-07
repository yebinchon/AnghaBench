
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tpctl ;
struct bwi_tpctl {int bbp_atten; int rf_atten; int tp_ctrl1; } ;
struct bwi_softc {int sc_card_flags; } ;
struct bwi_rf {scalar_t__ rf_type; int rf_rev; } ;
struct bwi_mac {int mac_tpctl; struct bwi_rf mac_rf; struct bwi_softc* mac_sc; } ;


 int BWI_CARD_F_PA_GPIO9 ;
 int BWI_RF_ATTEN_FACTOR ;
 scalar_t__ BWI_RF_T_BCM2050 ;
 int bcopy (int *,struct bwi_tpctl*,int) ;
 int bwi_mac_balance_atten (int*,int*) ;
 int bwi_mac_lock (struct bwi_mac*) ;
 int bwi_mac_set_tpctl_11bg (struct bwi_mac*,struct bwi_tpctl*) ;
 int bwi_mac_unlock (struct bwi_mac*) ;

__attribute__((used)) static void
bwi_mac_adjust_tpctl(struct bwi_mac *mac, int rf_atten_adj, int bbp_atten_adj)
{
 struct bwi_softc *sc = mac->mac_sc;
 struct bwi_rf *rf = &mac->mac_rf;
 struct bwi_tpctl tpctl;
 int bbp_atten, rf_atten, tp_ctrl1;

 bcopy(&mac->mac_tpctl, &tpctl, sizeof(tpctl));


 bbp_atten = tpctl.bbp_atten;
 rf_atten = tpctl.rf_atten;
 tp_ctrl1 = tpctl.tp_ctrl1;

 bbp_atten += bbp_atten_adj;
 rf_atten += rf_atten_adj;

 bwi_mac_balance_atten(&bbp_atten, &rf_atten);

 if (rf->rf_type == BWI_RF_T_BCM2050 && rf->rf_rev == 2) {
  if (rf_atten <= 1) {
   if (tp_ctrl1 == 0) {
    tp_ctrl1 = 3;
    bbp_atten += 2;
    rf_atten += 2;
   } else if (sc->sc_card_flags & BWI_CARD_F_PA_GPIO9) {
    bbp_atten +=
    (BWI_RF_ATTEN_FACTOR * (rf_atten - 2));
    rf_atten = 2;
   }
  } else if (rf_atten > 4 && tp_ctrl1 != 0) {
   tp_ctrl1 = 0;
   if (bbp_atten < 3) {
    bbp_atten += 2;
    rf_atten -= 3;
   } else {
    bbp_atten -= 2;
    rf_atten -= 2;
   }
  }
  bwi_mac_balance_atten(&bbp_atten, &rf_atten);
 }

 tpctl.bbp_atten = bbp_atten;
 tpctl.rf_atten = rf_atten;
 tpctl.tp_ctrl1 = tp_ctrl1;

 bwi_mac_lock(mac);
 bwi_mac_set_tpctl_11bg(mac, &tpctl);
 bwi_mac_unlock(mac);
}

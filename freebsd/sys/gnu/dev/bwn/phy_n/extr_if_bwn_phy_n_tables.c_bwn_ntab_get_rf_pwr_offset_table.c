
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {int ic_curchan; } ;
struct bwn_phy {int rev; int rf_rev; } ;
struct bwn_mac {TYPE_1__* mac_sc; struct bwn_phy mac_phy; } ;
typedef int int16_t ;
struct TYPE_2__ {struct ieee80211com sc_ic; } ;


 int BWN_ERRPRINTF (TYPE_1__*,char*) ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (int ) ;
 int const* bwn_ntab_rf_pwr_offset_2057_rev14_2g ;
 int const* bwn_ntab_rf_pwr_offset_2057_rev9_2g ;
 int const* bwn_ntab_rf_pwr_offset_2057_rev9_5g ;

const int16_t *bwn_ntab_get_rf_pwr_offset_table(struct bwn_mac *mac)
{
 struct ieee80211com *ic = &mac->mac_sc->sc_ic;
 struct bwn_phy *phy = &mac->mac_phy;

 if (IEEE80211_IS_CHAN_2GHZ(ic->ic_curchan)) {
  switch (phy->rev) {
  case 17:
   if (phy->rf_rev == 14)
    return bwn_ntab_rf_pwr_offset_2057_rev14_2g;
   break;
  case 16:
   if (phy->rf_rev == 9)
    return bwn_ntab_rf_pwr_offset_2057_rev9_2g;
   break;
  }

  BWN_ERRPRINTF(mac->mac_sc,
         "No 2GHz RF power table available for this device\n");
  return ((void*)0);
 } else {
  switch (phy->rev) {
  case 16:
   if (phy->rf_rev == 9)
    return bwn_ntab_rf_pwr_offset_2057_rev9_5g;
   break;
  }

  BWN_ERRPRINTF(mac->mac_sc,
         "No 5GHz RF power table available for this device\n");
  return ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct bwn_phy {int rev; TYPE_1__* phy_n; } ;
struct bwn_mac {struct bwn_softc* mac_sc; struct bwn_phy mac_phy; } ;
struct TYPE_2__ {scalar_t__ ipa5g_on; scalar_t__ ipa2g_on; } ;


 int BHND_NVAR_EXTPAGAIN2G ;
 int BHND_NVAR_EXTPAGAIN5G ;
 int BWN_ERRPRINTF (struct bwn_softc*,char*,...) ;
 int IEEE80211_IS_CHAN_5GHZ (int ) ;
 int bhnd_nvram_getvar_uint8 (int ,int ,int*) ;
 int const* bwn_nphy_get_ipa_gain_table (struct bwn_mac*) ;
 int const* bwn_ntab_tx_gain_epa_rev3_2g ;
 int const* bwn_ntab_tx_gain_epa_rev3_5g ;
 int const* bwn_ntab_tx_gain_epa_rev3_hi_pwr_2g ;
 int const* bwn_ntab_tx_gain_epa_rev4_5g ;
 int const* bwn_ntab_tx_gain_epa_rev4_hi_pwr_5g ;
 int const* bwn_ntab_tx_gain_epa_rev5_5g ;
 int const* bwn_ntab_tx_gain_rev0_1_2 ;

const uint32_t *bwn_nphy_get_tx_gain_table(struct bwn_mac *mac)
{
 struct ieee80211com *ic = &mac->mac_sc->sc_ic;
 struct bwn_softc *sc = mac->mac_sc;
 struct bwn_phy *phy = &mac->mac_phy;
 int error, is_5ghz;
 uint8_t extpa_gain;


 is_5ghz = !! IEEE80211_IS_CHAN_5GHZ(ic->ic_curchan);

 if (mac->mac_phy.rev < 3)
  return bwn_ntab_tx_gain_rev0_1_2;


 if ((mac->mac_phy.phy_n->ipa2g_on && is_5ghz == 0) ||
     (mac->mac_phy.phy_n->ipa5g_on && is_5ghz == 1)) {
  return bwn_nphy_get_ipa_gain_table(mac);
 } else if (is_5ghz == 1) {
  switch (phy->rev) {
  case 6:
  case 5:
   return bwn_ntab_tx_gain_epa_rev5_5g;
  case 4:
   error = bhnd_nvram_getvar_uint8(sc->sc_dev,
       BHND_NVAR_EXTPAGAIN5G, &extpa_gain);
   if (error) {
    BWN_ERRPRINTF(mac->mac_sc, "Error reading EPA "
        "gain configuration (%s) from NVRAM: %d\n",
        BHND_NVAR_EXTPAGAIN5G, error);
    return (((void*)0));
   }

   return (extpa_gain == 3) ?
    bwn_ntab_tx_gain_epa_rev4_5g :
    bwn_ntab_tx_gain_epa_rev4_hi_pwr_5g;
  case 3:
   return bwn_ntab_tx_gain_epa_rev3_5g;
  default:
   BWN_ERRPRINTF(mac->mac_sc,
          "No 5GHz EPA gain table available for this device\n");
   return ((void*)0);
  }
 } else {
  switch (phy->rev) {
  case 6:
  case 5:
   error = bhnd_nvram_getvar_uint8(sc->sc_dev,
       BHND_NVAR_EXTPAGAIN2G, &extpa_gain);
   if (error) {
    BWN_ERRPRINTF(mac->mac_sc, "Error reading EPA "
        "gain configuration (%s) from NVRAM: %d\n",
        BHND_NVAR_EXTPAGAIN2G, error);
    return (((void*)0));
   }

   if (extpa_gain == 3)
    return bwn_ntab_tx_gain_epa_rev3_hi_pwr_2g;

  case 4:
  case 3:
   return bwn_ntab_tx_gain_epa_rev3_2g;
  default:
   BWN_ERRPRINTF(mac->mac_sc,
          "No 2GHz EPA gain table available for this device\n");
   return ((void*)0);
  }
 }
}

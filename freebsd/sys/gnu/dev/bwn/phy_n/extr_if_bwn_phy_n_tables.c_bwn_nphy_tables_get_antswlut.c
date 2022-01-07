
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 char* BHND_NVAR_ANTSWCTL2G ;
 char* BHND_NVAR_ANTSWCTL5G ;
 int BWN_ERRPRINTF (struct bwn_softc*,char*,char const*,int) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (int ) ;
 int bhnd_nvram_getvar_uint8 (int ,char const*,int *) ;

__attribute__((used)) static int bwn_nphy_tables_get_antswlut(struct bwn_mac *mac, uint8_t *antswlut)
{
 struct ieee80211com *ic = &mac->mac_sc->sc_ic;
 struct bwn_softc *sc = mac->mac_sc;
 const char *antswlut_var;
 int error;

 if (IEEE80211_IS_CHAN_5GHZ(ic->ic_curchan))
  antswlut_var = BHND_NVAR_ANTSWCTL5G;
 else
  antswlut_var = BHND_NVAR_ANTSWCTL2G;

 error = bhnd_nvram_getvar_uint8(sc->sc_dev, antswlut_var, antswlut);
 if (error)
  BWN_ERRPRINTF(mac->mac_sc, "NVRAM variable %s unreadable: %d",
      antswlut_var, error);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct ieee80211_wme_info {int wme_len; int* wme_oui; scalar_t__ wme_info; int wme_version; int wme_subtype; int wme_type; int wme_id; } ;


 int DPRINTF (char*) ;
 int IEEE80211_ELEMID_VENDOR ;
 int IWI_CMD_SET_WMEIE ;
 int WME_INFO_OUI_SUBTYPE ;
 int WME_OUI_TYPE ;
 int WME_VERSION ;
 int iwi_cmd (struct iwi_softc*,int ,struct ieee80211_wme_info*,int) ;
 int memset (struct ieee80211_wme_info*,int ,int) ;

__attribute__((used)) static int
iwi_wme_setie(struct iwi_softc *sc)
{
 struct ieee80211_wme_info wme;

 memset(&wme, 0, sizeof wme);
 wme.wme_id = IEEE80211_ELEMID_VENDOR;
 wme.wme_len = sizeof (struct ieee80211_wme_info) - 2;
 wme.wme_oui[0] = 0x00;
 wme.wme_oui[1] = 0x50;
 wme.wme_oui[2] = 0xf2;
 wme.wme_type = WME_OUI_TYPE;
 wme.wme_subtype = WME_INFO_OUI_SUBTYPE;
 wme.wme_version = WME_VERSION;
 wme.wme_info = 0;

 DPRINTF(("Setting WME IE (len=%u)\n", wme.wme_len));
 return iwi_cmd(sc, IWI_CMD_SET_WMEIE, &wme, sizeof wme);
}

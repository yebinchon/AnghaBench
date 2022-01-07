
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_wep_key {int idx; int len; int key; int cmd; } ;
struct iwi_softc {int dummy; } ;
struct ieee80211vap {struct ieee80211_key* iv_nw_keys; } ;
struct ieee80211_key {int wk_keylen; int wk_key; } ;


 int DPRINTF (char*) ;
 int IEEE80211_WEP_NKID ;
 int IWI_CMD_SET_WEP_KEY ;
 int IWI_WEP_KEY_CMD_SETKEY ;
 int iwi_cmd (struct iwi_softc*,int ,struct iwi_wep_key*,int) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int
iwi_setwepkeys(struct iwi_softc *sc, struct ieee80211vap *vap)
{
 struct iwi_wep_key wepkey;
 struct ieee80211_key *wk;
 int error, i;

 for (i = 0; i < IEEE80211_WEP_NKID; i++) {
  wk = &vap->iv_nw_keys[i];

  wepkey.cmd = IWI_WEP_KEY_CMD_SETKEY;
  wepkey.idx = i;
  wepkey.len = wk->wk_keylen;
  memset(wepkey.key, 0, sizeof wepkey.key);
  memcpy(wepkey.key, wk->wk_key, wk->wk_keylen);
  DPRINTF(("Setting wep key index %u len %u\n", wepkey.idx,
      wepkey.len));
  error = iwi_cmd(sc, IWI_CMD_SET_WEP_KEY, &wepkey,
      sizeof wepkey);
  if (error != 0)
   return error;
 }
 return 0;
}

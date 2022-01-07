
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_key {int wk_keytsc; struct ccmp_ctx* wk_private; } ;
struct ccmp_ctx {struct ieee80211vap* cc_vap; } ;


 int IEEE80211_WEP_EXTIV ;
 int ieee80211_crypto_get_keyid (struct ieee80211vap*,struct ieee80211_key*) ;

__attribute__((used)) static void
ccmp_setiv(struct ieee80211_key *k, uint8_t *ivp)
{
 struct ccmp_ctx *ctx = k->wk_private;
 struct ieee80211vap *vap = ctx->cc_vap;
 uint8_t keyid;

 keyid = ieee80211_crypto_get_keyid(vap, k) << 6;

 k->wk_keytsc++;
 ivp[0] = k->wk_keytsc >> 0;
 ivp[1] = k->wk_keytsc >> 8;
 ivp[2] = 0;
 ivp[3] = keyid | IEEE80211_WEP_EXTIV;
 ivp[4] = k->wk_keytsc >> 16;
 ivp[5] = k->wk_keytsc >> 24;
 ivp[6] = k->wk_keytsc >> 32;
 ivp[7] = k->wk_keytsc >> 40;
}

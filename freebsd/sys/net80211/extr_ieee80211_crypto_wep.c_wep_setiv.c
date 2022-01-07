
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct wep_ctx {int wc_iv; struct ieee80211vap* wc_vap; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_key {struct wep_ctx* wk_private; } ;


 int ieee80211_crypto_get_keyid (struct ieee80211vap*,struct ieee80211_key*) ;

__attribute__((used)) static void
wep_setiv(struct ieee80211_key *k, uint8_t *ivp)
{
 struct wep_ctx *ctx = k->wk_private;
 struct ieee80211vap *vap = ctx->wc_vap;
 uint32_t iv;
 uint8_t keyid;

 keyid = ieee80211_crypto_get_keyid(vap, k) << 6;
 iv = ctx->wc_iv;
 if ((iv & 0xff00) == 0xff00) {
  int B = (iv & 0xff0000) >> 16;
  if (3 <= B && B < 16)
   iv += 0x0100;
 }
 ctx->wc_iv = iv + 1;






 ivp[0] = iv >> 0;
 ivp[1] = iv >> 8;
 ivp[2] = iv >> 16;





 ivp[3] = keyid;
}

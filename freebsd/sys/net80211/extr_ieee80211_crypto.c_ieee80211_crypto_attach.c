
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 size_t IEEE80211_CIPHER_NONE ;
 int ** ciphers ;
 int ieee80211_cipher_none ;

void
ieee80211_crypto_attach(struct ieee80211com *ic)
{

 ciphers[IEEE80211_CIPHER_NONE] = &ieee80211_cipher_none;
}

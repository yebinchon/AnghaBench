
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 size_t IEEE80211_CIPHER_MAX ;
 int ** ciphers ;

int
ieee80211_crypto_available(u_int cipher)
{
 return cipher < IEEE80211_CIPHER_MAX && ciphers[cipher] != ((void*)0);
}

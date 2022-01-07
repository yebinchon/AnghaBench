
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IEEE80211_CRYPTO_AES_CCM ;
 int IEEE80211_CRYPTO_AES_OCB ;
 int IEEE80211_CRYPTO_CKIP ;
 int IEEE80211_CRYPTO_TKIP ;
 int IEEE80211_CRYPTO_TKIPMIC ;
 int IEEE80211_CRYPTO_WEP ;
 int wlanCryptoCaps_aes ;
 int wlanCryptoCaps_aesCcm ;
 int wlanCryptoCaps_ckip ;
 int wlanCryptoCaps_tkip ;
 int wlanCryptoCaps_tkipMic ;
 int wlanCryptoCaps_wep ;

__attribute__((used)) static uint32_t
wlan_cryptocaps_to_snmp(uint32_t ccaps)
{
 uint32_t scaps = 0;
 scaps = ccaps;

 return (scaps);
}

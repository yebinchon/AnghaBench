
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;


 int IEEE80211_T_CCK ;
 int IEEE80211_T_OFDM ;

uint8_t
ieee80211_plcp2rate(uint8_t plcp, enum ieee80211_phytype type)
{
 if (type == IEEE80211_T_OFDM) {
  static const uint8_t ofdm_plcp2rate[16] = {
   [0xb] = 12,
   [0xf] = 18,
   [0xa] = 24,
   [0xe] = 36,
   [0x9] = 48,
   [0xd] = 72,
   [0x8] = 96,
   [0xc] = 108
  };
  return ofdm_plcp2rate[plcp & 0xf];
 }
 if (type == IEEE80211_T_CCK) {
  static const uint8_t cck_plcp2rate[16] = {
   [0xa] = 2,
   [0x4] = 4,
   [0x7] = 11,
   [0xe] = 22,
   [0xc] = 44,
  };
  return cck_plcp2rate[plcp & 0xf];
 }
 return 0;
}

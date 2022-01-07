
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int IEEE80211_CHAN_A ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_CHAN_VHT20 ;
 int IEEE80211_CHAN_VHT40D ;
 int IEEE80211_CHAN_VHT40U ;
 int IEEE80211_CHAN_VHT80 ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_VHT_5GHZ ;
 scalar_t__ isset (int const*,int ) ;

__attribute__((used)) static void
getflags_5ghz(const uint8_t bands[], uint32_t flags[], int ht40, int vht80)
{
 int nmodes;
 nmodes = 0;


 if (isset(bands, IEEE80211_MODE_11A))
  flags[nmodes++] = IEEE80211_CHAN_A;
 if (isset(bands, IEEE80211_MODE_11NA))
  flags[nmodes++] = IEEE80211_CHAN_A | IEEE80211_CHAN_HT20;
 if (isset(bands, IEEE80211_MODE_VHT_5GHZ)) {
  flags[nmodes++] = IEEE80211_CHAN_A | IEEE80211_CHAN_HT20 |
      IEEE80211_CHAN_VHT20;
 }


 if (ht40) {
  flags[nmodes++] = IEEE80211_CHAN_A | IEEE80211_CHAN_HT40U;
 }
 if (ht40 && isset(bands, IEEE80211_MODE_VHT_5GHZ)) {
  flags[nmodes++] = IEEE80211_CHAN_A | IEEE80211_CHAN_HT40U
      | IEEE80211_CHAN_VHT40U;
 }
 if (ht40) {
  flags[nmodes++] = IEEE80211_CHAN_A | IEEE80211_CHAN_HT40D;
 }
 if (ht40 && isset(bands, IEEE80211_MODE_VHT_5GHZ)) {
  flags[nmodes++] = IEEE80211_CHAN_A | IEEE80211_CHAN_HT40D
      | IEEE80211_CHAN_VHT40D;
 }


 if (vht80 && isset(bands, IEEE80211_MODE_VHT_5GHZ)) {
  flags[nmodes++] = IEEE80211_CHAN_A |
      IEEE80211_CHAN_HT40U | IEEE80211_CHAN_VHT80;
  flags[nmodes++] = IEEE80211_CHAN_A |
      IEEE80211_CHAN_HT40D | IEEE80211_CHAN_VHT80;
 }



 flags[nmodes] = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_G ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NG ;
 scalar_t__ isset (int const*,int ) ;

__attribute__((used)) static void
getflags_2ghz(const uint8_t bands[], uint32_t flags[], int ht40)
{
 int nmodes;

 nmodes = 0;
 if (isset(bands, IEEE80211_MODE_11B))
  flags[nmodes++] = IEEE80211_CHAN_B;
 if (isset(bands, IEEE80211_MODE_11G))
  flags[nmodes++] = IEEE80211_CHAN_G;
 if (isset(bands, IEEE80211_MODE_11NG))
  flags[nmodes++] = IEEE80211_CHAN_G | IEEE80211_CHAN_HT20;
 if (ht40) {
  flags[nmodes++] = IEEE80211_CHAN_G | IEEE80211_CHAN_HT40U;
  flags[nmodes++] = IEEE80211_CHAN_G | IEEE80211_CHAN_HT40D;
 }
 flags[nmodes] = 0;
}

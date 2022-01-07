
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_11NG ;
 int IEEE80211_MODE_VHT_2GHZ ;
 int IEEE80211_MODE_VHT_5GHZ ;
 int getflags_2ghz (int const*,scalar_t__*,int) ;
 int getflags_5ghz (int const*,scalar_t__*,int,int) ;
 scalar_t__ isset (int const*,int ) ;

__attribute__((used)) static void
getflags(const uint8_t bands[], uint32_t flags[], int ht40, int vht80)
{

 flags[0] = 0;
 if (isset(bands, IEEE80211_MODE_11A) ||
     isset(bands, IEEE80211_MODE_11NA) ||
     isset(bands, IEEE80211_MODE_VHT_5GHZ)) {
  if (isset(bands, IEEE80211_MODE_11B) ||
      isset(bands, IEEE80211_MODE_11G) ||
      isset(bands, IEEE80211_MODE_11NG) ||
      isset(bands, IEEE80211_MODE_VHT_2GHZ))
   return;

  getflags_5ghz(bands, flags, ht40, vht80);
 } else
  getflags_2ghz(bands, flags, ht40);
}

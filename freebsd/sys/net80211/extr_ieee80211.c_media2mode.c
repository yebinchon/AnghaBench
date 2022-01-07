
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct ifmedia_entry {int ifm_media; } ;


 int IEEE80211_F_TURBOP ;
 scalar_t__ IEEE80211_MODE_11A ;
 scalar_t__ IEEE80211_MODE_11B ;
 scalar_t__ IEEE80211_MODE_11G ;
 scalar_t__ IEEE80211_MODE_11NA ;
 scalar_t__ IEEE80211_MODE_11NG ;
 scalar_t__ IEEE80211_MODE_AUTO ;
 scalar_t__ IEEE80211_MODE_FH ;
 scalar_t__ IEEE80211_MODE_STURBO_A ;
 scalar_t__ IEEE80211_MODE_TURBO_A ;
 scalar_t__ IEEE80211_MODE_TURBO_G ;







 int IFM_IEEE80211_TURBO ;
 int IFM_MODE (int) ;

__attribute__((used)) static int
media2mode(const struct ifmedia_entry *ime, uint32_t flags, uint16_t *mode)
{
 switch (IFM_MODE(ime->ifm_media)) {
 case 133:
  *mode = IEEE80211_MODE_11A;
  break;
 case 132:
  *mode = IEEE80211_MODE_11B;
  break;
 case 131:
  *mode = IEEE80211_MODE_11G;
  break;
 case 128:
  *mode = IEEE80211_MODE_FH;
  break;
 case 130:
  *mode = IEEE80211_MODE_11NA;
  break;
 case 129:
  *mode = IEEE80211_MODE_11NG;
  break;
 case 134:
  *mode = IEEE80211_MODE_AUTO;
  break;
 default:
  return 0;
 }




 if (ime->ifm_media & IFM_IEEE80211_TURBO) {
  if (*mode == IEEE80211_MODE_11A) {
   if (flags & IEEE80211_F_TURBOP)
    *mode = IEEE80211_MODE_TURBO_A;
   else
    *mode = IEEE80211_MODE_STURBO_A;
  } else if (*mode == IEEE80211_MODE_11G)
   *mode = IEEE80211_MODE_TURBO_G;
  else
   return 0;
 }

 return 1;
}

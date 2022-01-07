
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_flags_ht; int iv_flags; } ;
struct ieee80211_channel {int dummy; } ;
typedef int MWL_HAL_APMODE ;


 int AP_MODE_A_ONLY ;
 int AP_MODE_AandN ;
 int AP_MODE_B_ONLY ;
 int AP_MODE_BandGandN ;
 int AP_MODE_G_ONLY ;
 int AP_MODE_GandN ;
 int AP_MODE_MIXED ;
 int AP_MODE_N_ONLY ;
 int IEEE80211_FHT_PUREN ;
 int IEEE80211_F_PUREG ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_A (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_B (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT (struct ieee80211_channel*) ;

__attribute__((used)) static MWL_HAL_APMODE
mwl_getapmode(const struct ieee80211vap *vap, struct ieee80211_channel *chan)
{
 MWL_HAL_APMODE mode;

 if (IEEE80211_IS_CHAN_HT(chan)) {
  if (vap->iv_flags_ht & IEEE80211_FHT_PUREN)
   mode = AP_MODE_N_ONLY;
  else if (IEEE80211_IS_CHAN_5GHZ(chan))
   mode = AP_MODE_AandN;
  else if (vap->iv_flags & IEEE80211_F_PUREG)
   mode = AP_MODE_GandN;
  else
   mode = AP_MODE_BandGandN;
 } else if (IEEE80211_IS_CHAN_ANYG(chan)) {
  if (vap->iv_flags & IEEE80211_F_PUREG)
   mode = AP_MODE_G_ONLY;
  else
   mode = AP_MODE_MIXED;
 } else if (IEEE80211_IS_CHAN_B(chan))
  mode = AP_MODE_B_ONLY;
 else if (IEEE80211_IS_CHAN_A(chan))
  mode = AP_MODE_A_ONLY;
 else
  mode = AP_MODE_MIXED;
 return mode;
}

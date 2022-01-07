
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 int IWM_PHY_BAND_24 ;
 int IWM_PHY_BAND_5 ;
 int htole32 (int ) ;

__attribute__((used)) static uint32_t
iwm_mvm_scan_rxon_flags(struct ieee80211_channel *c)
{
 if (IEEE80211_IS_CHAN_2GHZ(c))
  return htole32(IWM_PHY_BAND_24);
 else
  return htole32(IWM_PHY_BAND_5);
}

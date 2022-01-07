
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct iwn_softc {int dummy; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IWN_PASSIVE_DWELL_BASE ;
 scalar_t__ IWN_PASSIVE_DWELL_TIME_2GHZ ;
 scalar_t__ IWN_PASSIVE_DWELL_TIME_5GHZ ;
 scalar_t__ iwn_limit_dwell (struct iwn_softc*,scalar_t__) ;

__attribute__((used)) static uint16_t
iwn_get_passive_dwell_time(struct iwn_softc *sc, struct ieee80211_channel *c)
{
 uint16_t passive;

 if (c == ((void*)0) || IEEE80211_IS_CHAN_2GHZ(c)) {
  passive = IWN_PASSIVE_DWELL_BASE + IWN_PASSIVE_DWELL_TIME_2GHZ;
 } else {
  passive = IWN_PASSIVE_DWELL_BASE + IWN_PASSIVE_DWELL_TIME_5GHZ;
 }


 return (iwn_limit_dwell(sc, passive));
}

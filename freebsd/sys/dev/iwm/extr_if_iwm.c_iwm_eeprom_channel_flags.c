
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int IEEE80211_CHAN_DFS ;
 int IEEE80211_CHAN_NOADHOC ;
 int IEEE80211_CHAN_PASSIVE ;
 int IWM_NVM_CHANNEL_ACTIVE ;
 int IWM_NVM_CHANNEL_IBSS ;
 int IWM_NVM_CHANNEL_RADAR ;

__attribute__((used)) static uint32_t
iwm_eeprom_channel_flags(uint16_t ch_flags)
{
 uint32_t nflags;

 nflags = 0;
 if ((ch_flags & IWM_NVM_CHANNEL_ACTIVE) == 0)
  nflags |= IEEE80211_CHAN_PASSIVE;
 if ((ch_flags & IWM_NVM_CHANNEL_IBSS) == 0)
  nflags |= IEEE80211_CHAN_NOADHOC;
 if (ch_flags & IWM_NVM_CHANNEL_RADAR) {
  nflags |= IEEE80211_CHAN_DFS;

  nflags |= IEEE80211_CHAN_NOADHOC;
 }

 return (nflags);
}

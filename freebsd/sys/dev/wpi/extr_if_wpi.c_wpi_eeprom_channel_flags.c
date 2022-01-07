
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wpi_eeprom_chan {int flags; } ;


 int IEEE80211_CHAN_DFS ;
 int IEEE80211_CHAN_NOADHOC ;
 int IEEE80211_CHAN_NOHOSTAP ;
 int IEEE80211_CHAN_PASSIVE ;
 int WPI_EEPROM_CHAN_ACTIVE ;
 int WPI_EEPROM_CHAN_IBSS ;
 int WPI_EEPROM_CHAN_RADAR ;

__attribute__((used)) static uint32_t
wpi_eeprom_channel_flags(struct wpi_eeprom_chan *channel)
{
 uint32_t nflags;

 nflags = 0;
 if ((channel->flags & WPI_EEPROM_CHAN_ACTIVE) == 0)
  nflags |= IEEE80211_CHAN_PASSIVE;
 if ((channel->flags & WPI_EEPROM_CHAN_IBSS) == 0)
  nflags |= IEEE80211_CHAN_NOADHOC;
 if (channel->flags & WPI_EEPROM_CHAN_RADAR) {
  nflags |= IEEE80211_CHAN_DFS;

  nflags |= IEEE80211_CHAN_NOADHOC;
 }


 if (nflags & IEEE80211_CHAN_NOADHOC)
  nflags |= IEEE80211_CHAN_NOHOSTAP;

 return nflags;
}

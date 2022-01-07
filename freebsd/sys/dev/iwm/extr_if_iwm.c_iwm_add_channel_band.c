
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iwm_softc {TYPE_2__* cfg; TYPE_1__* nvm_data; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_4__ {scalar_t__ device_family; } ;
struct TYPE_3__ {int* nvm_ch_flags; } ;


 int IWM_DEBUG_EEPROM ;
 scalar_t__ IWM_DEVICE_FAMILY_7000 ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int ,int,char*) ;
 int IWM_NUM_2GHZ_CHANNELS ;
 int IWM_NVM_CHANNEL_VALID ;
 int ieee80211_add_channel (struct ieee80211_channel*,int,int*,int ,int ,int ,int ,int const*) ;
 int iwm_eeprom_channel_flags (int) ;
 int * iwm_nvm_channels ;
 int * iwm_nvm_channels_8000 ;
 int le16_to_cpup (int const* const) ;

__attribute__((used)) static void
iwm_add_channel_band(struct iwm_softc *sc, struct ieee80211_channel chans[],
    int maxchans, int *nchans, int ch_idx, size_t ch_num,
    const uint8_t bands[])
{
 const uint16_t * const nvm_ch_flags = sc->nvm_data->nvm_ch_flags;
 uint32_t nflags;
 uint16_t ch_flags;
 uint8_t ieee;
 int error;

 for (; ch_idx < ch_num; ch_idx++) {
  ch_flags = le16_to_cpup(nvm_ch_flags + ch_idx);
  if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000)
   ieee = iwm_nvm_channels[ch_idx];
  else
   ieee = iwm_nvm_channels_8000[ch_idx];

  if (!(ch_flags & IWM_NVM_CHANNEL_VALID)) {
   IWM_DPRINTF(sc, IWM_DEBUG_EEPROM,
       "Ch. %d Flags %x [%sGHz] - No traffic\n",
       ieee, ch_flags,
       (ch_idx >= IWM_NUM_2GHZ_CHANNELS) ?
       "5.2" : "2.4");
   continue;
  }

  nflags = iwm_eeprom_channel_flags(ch_flags);
  error = ieee80211_add_channel(chans, maxchans, nchans,
      ieee, 0, 0, nflags, bands);
  if (error != 0)
   break;

  IWM_DPRINTF(sc, IWM_DEBUG_EEPROM,
      "Ch. %d Flags %x [%sGHz] - Added\n",
      ieee, ch_flags,
      (ch_idx >= IWM_NUM_2GHZ_CHANNELS) ?
      "5.2" : "2.4");
 }
}

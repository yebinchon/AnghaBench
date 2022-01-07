
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct iwm_softc {TYPE_1__* cfg; struct iwm_nvm_data* nvm_data; } ;
struct iwm_nvm_data {scalar_t__ sku_cap_band_52GHz_enable; } ;
struct ieee80211com {struct iwm_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;
struct TYPE_2__ {scalar_t__ device_family; } ;


 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 scalar_t__ IWM_DEVICE_FAMILY_7000 ;
 size_t IWM_NUM_2GHZ_CHANNELS ;
 int clrbit (int *,int ) ;
 int iwm_add_channel_band (struct iwm_softc*,struct ieee80211_channel*,int,int*,size_t,size_t,int *) ;
 int iwm_nvm_channels ;
 int iwm_nvm_channels_8000 ;
 int memset (int *,int ,int) ;
 size_t nitems (int ) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
iwm_init_channel_map(struct ieee80211com *ic, int maxchans, int *nchans,
    struct ieee80211_channel chans[])
{
 struct iwm_softc *sc = ic->ic_softc;
 struct iwm_nvm_data *data = sc->nvm_data;
 uint8_t bands[IEEE80211_MODE_BYTES];
 size_t ch_num;

 memset(bands, 0, sizeof(bands));

 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 iwm_add_channel_band(sc, chans, maxchans, nchans, 0,
     IWM_NUM_2GHZ_CHANNELS - 1, bands);


 clrbit(bands, IEEE80211_MODE_11G);
 iwm_add_channel_band(sc, chans, maxchans, nchans,
     IWM_NUM_2GHZ_CHANNELS - 1, IWM_NUM_2GHZ_CHANNELS, bands);

 if (data->sku_cap_band_52GHz_enable) {
  if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000)
   ch_num = nitems(iwm_nvm_channels);
  else
   ch_num = nitems(iwm_nvm_channels_8000);
  memset(bands, 0, sizeof(bands));
  setbit(bands, IEEE80211_MODE_11A);
  iwm_add_channel_band(sc, chans, maxchans, nchans,
      IWM_NUM_2GHZ_CHANNELS, ch_num, bands);
 }
}

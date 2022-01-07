
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mwl_softc {int sc_mh; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;
typedef int MWL_HAL_CHANNELINFO ;


 int IEEE80211_CHAN_HTA ;
 int IEEE80211_CHAN_HTG ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_11NG ;
 int IEEE80211_MODE_BYTES ;
 int MWL_CH_20_MHz_WIDTH ;
 int MWL_CH_40_MHz_WIDTH ;
 int MWL_FREQ_BAND_2DOT4GHZ ;
 int MWL_FREQ_BAND_5GHZ ;
 int addchannels (struct ieee80211_channel*,int,int*,int const*,int *) ;
 int addht40channels (struct ieee80211_channel*,int,int*,int const*,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ mwl_hal_getchannelinfo (int ,int ,int ,int const**) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
getchannels(struct mwl_softc *sc, int maxchans, int *nchans,
 struct ieee80211_channel chans[])
{
 const MWL_HAL_CHANNELINFO *ci;
 uint8_t bands[IEEE80211_MODE_BYTES];







 *nchans = 0;
 if (mwl_hal_getchannelinfo(sc->sc_mh,
     MWL_FREQ_BAND_2DOT4GHZ, MWL_CH_20_MHz_WIDTH, &ci) == 0) {
  memset(bands, 0, sizeof(bands));
  setbit(bands, IEEE80211_MODE_11B);
  setbit(bands, IEEE80211_MODE_11G);
  setbit(bands, IEEE80211_MODE_11NG);
  addchannels(chans, maxchans, nchans, ci, bands);
 }
 if (mwl_hal_getchannelinfo(sc->sc_mh,
     MWL_FREQ_BAND_5GHZ, MWL_CH_20_MHz_WIDTH, &ci) == 0) {
  memset(bands, 0, sizeof(bands));
  setbit(bands, IEEE80211_MODE_11A);
  setbit(bands, IEEE80211_MODE_11NA);
  addchannels(chans, maxchans, nchans, ci, bands);
 }
 if (mwl_hal_getchannelinfo(sc->sc_mh,
     MWL_FREQ_BAND_2DOT4GHZ, MWL_CH_40_MHz_WIDTH, &ci) == 0)
  addht40channels(chans, maxchans, nchans, ci, IEEE80211_CHAN_HTG);
 if (mwl_hal_getchannelinfo(sc->sc_mh,
     MWL_FREQ_BAND_5GHZ, MWL_CH_40_MHz_WIDTH, &ci) == 0)
  addht40channels(chans, maxchans, nchans, ci, IEEE80211_CHAN_HTA);
}

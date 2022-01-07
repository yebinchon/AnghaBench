
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ural_softc {scalar_t__ rf_rev; } ;
struct ieee80211com {struct ural_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 scalar_t__ RAL_RF_5222 ;
 int ieee80211_add_channel_list_5ghz (struct ieee80211_channel*,int,int*,int ,int ,int *,int ) ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int ) ;
 int memset (int *,int ,int) ;
 int nitems (int ) ;
 int setbit (int *,int ) ;
 int ural_chan_5ghz ;

__attribute__((used)) static void
ural_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct ural_softc *sc = ic->ic_softc;
 uint8_t bands[IEEE80211_MODE_BYTES];

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 ieee80211_add_channels_default_2ghz(chans, maxchans, nchans, bands, 0);

 if (sc->rf_rev == RAL_RF_5222) {
  setbit(bands, IEEE80211_MODE_11A);
  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
      ural_chan_5ghz, nitems(ural_chan_5ghz), bands, 0);
 }
}

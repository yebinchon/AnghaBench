
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rum_softc {scalar_t__ rf_rev; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 scalar_t__ RT2573_RF_5225 ;
 scalar_t__ RT2573_RF_5226 ;
 int ieee80211_add_channel_list_5ghz (struct ieee80211_channel*,int,int*,int ,int ,int *,int ) ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int ) ;
 int memset (int *,int ,int) ;
 int nitems (int ) ;
 int rum_chan_5ghz ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
rum_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct rum_softc *sc = ic->ic_softc;
 uint8_t bands[IEEE80211_MODE_BYTES];

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 ieee80211_add_channels_default_2ghz(chans, maxchans, nchans, bands, 0);

 if (sc->rf_rev == RT2573_RF_5225 || sc->rf_rev == RT2573_RF_5226) {
  setbit(bands, IEEE80211_MODE_11A);
  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
      rum_chan_5ghz, nitems(rum_chan_5ghz), bands, 0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 int def_chan_5ghz_band1 ;
 int def_chan_5ghz_band2 ;
 int def_chan_5ghz_band3 ;
 int ieee80211_add_channel_list_5ghz (struct ieee80211_channel*,int,int*,int ,int ,int *,int ) ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int ) ;
 scalar_t__ isset (int *,int ) ;
 int iwi_collect_bands (struct ieee80211com*,int *,int) ;
 int nitems (int ) ;

__attribute__((used)) static void
iwi_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 uint8_t bands[IEEE80211_MODE_BYTES];

 iwi_collect_bands(ic, bands, sizeof(bands));
 *nchans = 0;
 if (isset(bands, IEEE80211_MODE_11B) || isset(bands, IEEE80211_MODE_11G))
  ieee80211_add_channels_default_2ghz(chans, maxchans, nchans,
      bands, 0);
 if (isset(bands, IEEE80211_MODE_11A)) {
  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
      def_chan_5ghz_band1, nitems(def_chan_5ghz_band1),
      bands, 0);
  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
      def_chan_5ghz_band2, nitems(def_chan_5ghz_band2),
      bands, 0);
  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
      def_chan_5ghz_band3, nitems(def_chan_5ghz_band3),
      bands, 0);
 }
}

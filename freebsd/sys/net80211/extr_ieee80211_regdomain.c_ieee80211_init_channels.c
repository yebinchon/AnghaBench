
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_regdomain {scalar_t__ ecm; } ;
struct ieee80211com {int ic_nchans; int ic_htcaps; struct ieee80211_regdomain ic_regdomain; struct ieee80211_channel* ic_channels; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_CHAN_MAX ;
 int IEEE80211_HTCAP_CHWIDTH40 ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_11NG ;
 int def_chan_2ghz ;
 int def_chan_5ghz_band1 ;
 int def_chan_5ghz_band2 ;
 int def_chan_5ghz_band3 ;
 int ieee80211_add_channel_list_2ghz (struct ieee80211_channel*,int ,int*,int ,int,int const*,int) ;
 int ieee80211_add_channel_list_5ghz (struct ieee80211_channel*,int ,int*,int ,int,int const*,int) ;
 scalar_t__ isset (int const*,int ) ;
 int nitems (int ) ;

int
ieee80211_init_channels(struct ieee80211com *ic,
 const struct ieee80211_regdomain *rd, const uint8_t bands[])
{
 struct ieee80211_channel *chans = ic->ic_channels;
 int *nchans = &ic->ic_nchans;
 int ht40;


 ht40 = !!(ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40);
 *nchans = 0;
 if (isset(bands, IEEE80211_MODE_11B) ||
     isset(bands, IEEE80211_MODE_11G) ||
     isset(bands, IEEE80211_MODE_11NG)) {
  int nchan = nitems(def_chan_2ghz);
  if (!(rd != ((void*)0) && rd->ecm))
   nchan -= 3;

  ieee80211_add_channel_list_2ghz(chans, IEEE80211_CHAN_MAX,
      nchans, def_chan_2ghz, nchan, bands, ht40);
 }
 if (isset(bands, IEEE80211_MODE_11A) ||
     isset(bands, IEEE80211_MODE_11NA)) {
  ieee80211_add_channel_list_5ghz(chans, IEEE80211_CHAN_MAX,
      nchans, def_chan_5ghz_band1, nitems(def_chan_5ghz_band1),
      bands, ht40);
  ieee80211_add_channel_list_5ghz(chans, IEEE80211_CHAN_MAX,
      nchans, def_chan_5ghz_band2, nitems(def_chan_5ghz_band2),
      bands, ht40);
  ieee80211_add_channel_list_5ghz(chans, IEEE80211_CHAN_MAX,
      nchans, def_chan_5ghz_band3, nitems(def_chan_5ghz_band3),
      bands, ht40);
 }
 if (rd != ((void*)0))
  ic->ic_regdomain = *rd;

 return 0;
}

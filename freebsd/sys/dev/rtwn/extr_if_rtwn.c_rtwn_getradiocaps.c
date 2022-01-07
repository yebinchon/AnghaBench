
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rtwn_softc {scalar_t__* chan_num_5ghz; int * chan_list_5ghz; } ;
struct ieee80211com {int ic_htcaps; struct rtwn_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_HTCAP_CHWIDTH40 ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_11NG ;
 int IEEE80211_MODE_BYTES ;
 int ieee80211_add_channel_list_5ghz (struct ieee80211_channel*,int,int*,int ,scalar_t__,int *,int) ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int) ;
 int memset (int *,int ,int) ;
 int nitems (scalar_t__*) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
rtwn_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct rtwn_softc *sc = ic->ic_softc;
 uint8_t bands[IEEE80211_MODE_BYTES];
 int i;

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 setbit(bands, IEEE80211_MODE_11NG);
 ieee80211_add_channels_default_2ghz(chans, maxchans, nchans,
     bands, !!(ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40));


 setbit(bands, IEEE80211_MODE_11A);
 setbit(bands, IEEE80211_MODE_11NA);
 for (i = 0; i < nitems(sc->chan_num_5ghz); i++) {
  if (sc->chan_num_5ghz[i] == 0)
   continue;

  ieee80211_add_channel_list_5ghz(chans, maxchans, nchans,
      sc->chan_list_5ghz[i], sc->chan_num_5ghz[i], bands,
      !!(ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rsu_softc {scalar_t__ sc_ht; } ;
struct ieee80211com {int ic_htcaps; struct rsu_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_HTCAP_CHWIDTH40 ;
 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NG ;
 int IEEE80211_MODE_BYTES ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int) ;
 int memset (int *,int ,int) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
rsu_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct rsu_softc *sc = ic->ic_softc;
 uint8_t bands[IEEE80211_MODE_BYTES];


 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 if (sc->sc_ht)
  setbit(bands, IEEE80211_MODE_11NG);
 ieee80211_add_channels_default_2ghz(chans, maxchans, nchans,
     bands, (ic->ic_htcaps & IEEE80211_HTCAP_CHWIDTH40) != 0);
}

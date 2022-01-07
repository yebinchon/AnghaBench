
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct wi_softc {int sc_chanmask; } ;
struct ieee80211com {struct wi_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_BYTES ;
 int ieee80211_add_channel (struct ieee80211_channel*,int,int*,int,int ,int ,int ,int *) ;
 int memset (int *,int ,int) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
wi_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct wi_softc *sc = ic->ic_softc;
 u_int8_t bands[IEEE80211_MODE_BYTES];
 int i;

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);

 for (i = 1; i < 16; i++) {
  if (sc->sc_chanmask & (1 << i)) {

   ieee80211_add_channel(chans, maxchans, nchans,
       i, 0, 0, 0, bands);
  }
 }
}

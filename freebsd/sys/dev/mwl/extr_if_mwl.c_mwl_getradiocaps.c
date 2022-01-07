
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;


 int getchannels (struct mwl_softc*,int,int*,struct ieee80211_channel*) ;

__attribute__((used)) static void
mwl_getradiocaps(struct ieee80211com *ic,
 int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct mwl_softc *sc = ic->ic_softc;

 getchannels(sc, maxchans, nchans, chans);
}

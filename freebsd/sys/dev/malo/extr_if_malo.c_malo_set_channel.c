
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malo_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct malo_softc* ic_softc; } ;


 int malo_chan_set (struct malo_softc*,int ) ;

__attribute__((used)) static void
malo_set_channel(struct ieee80211com *ic)
{
 struct malo_softc *sc = ic->ic_softc;

 (void) malo_chan_set(sc, ic->ic_curchan);
}

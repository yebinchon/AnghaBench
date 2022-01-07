
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zyd_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct zyd_softc* ic_softc; } ;


 int ZYD_LOCK (struct zyd_softc*) ;
 int ZYD_UNLOCK (struct zyd_softc*) ;
 int zyd_set_chan (struct zyd_softc*,int ) ;

__attribute__((used)) static void
zyd_set_channel(struct ieee80211com *ic)
{
 struct zyd_softc *sc = ic->ic_softc;

 ZYD_LOCK(sc);
 zyd_set_chan(sc, ic->ic_curchan);
 ZYD_UNLOCK(sc);
}

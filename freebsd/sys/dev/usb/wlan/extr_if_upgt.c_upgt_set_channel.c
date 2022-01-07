
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upgt_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct upgt_softc* ic_softc; } ;


 int UPGT_LOCK (struct upgt_softc*) ;
 int UPGT_UNLOCK (struct upgt_softc*) ;
 int upgt_set_chan (struct upgt_softc*,int ) ;

__attribute__((used)) static void
upgt_set_channel(struct ieee80211com *ic)
{
 struct upgt_softc *sc = ic->ic_softc;

 UPGT_LOCK(sc);
 upgt_set_chan(sc, ic->ic_curchan);
 UPGT_UNLOCK(sc);
}
